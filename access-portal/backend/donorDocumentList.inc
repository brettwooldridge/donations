<?php

$donorDocumentSelectQuery = "select * from documents where affected_donors REGEXP '$donor' order by publication_date desc";
$donorDocumentSelectResult = $mysqli -> query($donorDocumentSelectQuery);
print '<h4 id="donorDocumentList">Full list of documents in reverse chronological order ('.($donorDocumentSelectResult -> num_rows).' documents)</h4>';
print "\n";
print '<table id="myTableDonorDocumentList" class="tablesorter">'."\n";
print "<thead>\n";
print '<tr>';
print '<th>Title (URL linked)</th>';
print '<th>Publication date</th>';
print '<th>Author</th>';
print '<th>Publisher</th>';
print '<th>Affected donors</th>';
print '<th>Affected donees</th>';
print '<th>Document scope</th>';
print '<th>Notes</th>';
print '</tr>';
print "</thead>\n<tbody>\n";
for($i = 0; $i < $donorDocumentSelectResult -> num_rows; $i++) {
  $row = $donorDocumentSelectResult -> fetch_assoc();
  print '<tr>';
  print '<td><a href="'.$row['url'].'">'.$row['title'].'</a></td>';
  print '<td>'.$row['publication_date'].'</td>';
  if ($row['author'] != '') {
    # Change this to check if author is in list
    print '<td>'.explodeDonorCsv($row['author']).'</td>';
  } else {
    print '<td></td>';
  }

  # Link to publisher as donor or donor?
  print '<td>'.$row['publisher'].'</td>';

  print '<td>'.explodeDonorCsv($row['affected_donors']).'</td>';
  print '<td>'.explodeDoneeCsv($row['affected_donees']).'</td>';
  print '<td>'.$row['document_scope'].'</td>';
  print '<td>'.cleanNotes($row['notes']).'</td>';
  print '</tr>';
}

print "</tbody>\n</table>\n";

?>