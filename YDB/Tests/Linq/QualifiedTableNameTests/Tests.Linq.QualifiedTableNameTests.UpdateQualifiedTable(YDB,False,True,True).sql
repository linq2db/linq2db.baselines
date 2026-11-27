-- YDB Ydb
DECLARE Value Int32
SET     Value = 10
DECLARE ID Int32
SET     ID = 5

UPDATE
	`/local/QualifiedNameTable`
SET
	`Value` = $Value
WHERE
	`/local/QualifiedNameTable`.ID = $ID

