-- YDB Ydb
DECLARE ID Int32
SET     ID = 5

DELETE FROM
	`/local/QualifiedNameTable`
WHERE
	`/local/QualifiedNameTable`.ID = $ID

