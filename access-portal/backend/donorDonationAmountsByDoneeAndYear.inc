<?php

print '<h4 id="donorDonationAmountsByDoneeAndYear">Donation amounts by donee and year</h4>';

$years = array_reverse(range(2001, 2017));

# We'll change the below to reference an explicit donees table, when that's made
$doneeQuery = "select donee from donations where donor='".$donor."' group by donee;";
$doneeResult = $mysqli -> query($doneeQuery);
$donees = array();
for ($i = 0; $i < $doneeResult -> num_rows; $i++) {
  $row = $doneeResult -> fetch_assoc();
  array_push($donees, $row['donee']);
}
$grandTotalDonationAmount = 0;
foreach($donees as $donee) {
  $doneeDonationAmount[$donee] = 0;
  foreach($years as $year) {
    $yearDonationAmount[$year] = 0;
    $donationAmountByDoneeAndYear[$donee][$year] = 0;
  }
}

$doneeAndYearQuery = "select donee, year(donation_date) as year, sum(amount) as amount from donations where donor='".$donor."' group by donee, year(donation_date)";
$doneeAndYearResult = $mysqli -> query($doneeAndYearQuery);

for ($i=0; $i < $doneeAndYearResult -> num_rows; $i++) {
  $row = $doneeAndYearResult -> fetch_assoc();
  $donationAmountByDoneeAndYear[$row['donee']][$row['year']] = $row['amount'];
  $doneeDonationAmount[$row['donee']] += $row['amount'];
  $yearDonationAmount[$row['year']] += $row['amount'];
  $grandTotalDonationAmount += $row['amount'];
}

function cmpDoneesByAmount($firstDonee, $secondDonee) {
  global $doneeDonationAmount;
  if (intval($doneeDonationAmount[$firstDonee]) == intval($doneeDonationAmount[$secondDonee])) {
    return 0;
  }
  return (intval($doneeDonationAmount[$firstDonee]) > intval($doneeDonationAmount[$secondDonee])) ? -1 : 1;
}

usort($donees, "cmpDoneesByAmount");

print '<table id="myTableDonorDonationAmountsByDoneeAndYear" class="tablesorter">'."\n";
print "<thead>\n";
print "  <tr>\n    <th>Donee</th>\n";
foreach ($years as $year) {
  if ($yearDonationAmount[$year] > 0) {
    print "    <th>$year</th>\n";
  }
}
print "    <th>Total</th>\n  </tr>\n";
print "</thead>\n<tbody>\n";

foreach ($donees as $donee) {
  print "  <tr>\n";
  print '    <td><a href="/donee.php?donee='.urlencode($donee).'">'.$donee.'</a></td>'."\n";
  foreach ($years as $year) {
    if ($yearDonationAmount[$year] > 0) {
      print '    <td align="right">'.sprintf("%.2f",$donationAmountByDoneeAndYear[$donee][$year])."</td>\n";
    }
  }
  print '    <td align="right"><strong>'.sprintf("%.2f",$doneeDonationAmount[$donee])."</strong></td>\n";
  print "  </tr>\n";
}

print "</tbody>\n";
print "<tfoot>\n";
print "  <tr>\n    <td><strong>Total</strong></td>\n";

foreach ($years as $year) {
  if ($yearDonationAmount[$year] > 0) {
    print '    <td align="right"><strong>'.sprintf("%.2f",$yearDonationAmount[$year])."</strong></td>\n";
  }
}

print '    <td align="right"><strong>'.sprintf("%.2f",$grandTotalDonationAmount)."</strong></td>\n";
print "  </tr>\n";
print "</tfoot>\n";
print "</table>";