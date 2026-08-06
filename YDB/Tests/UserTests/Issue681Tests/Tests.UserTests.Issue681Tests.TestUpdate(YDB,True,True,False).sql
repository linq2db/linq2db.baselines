-- YDB Ydb
DECLARE $Value Int32
SET     $Value = 10
DECLARE $ID Int32
SET     $ID = 5

UPDATE
	`/local/Issue681Table`
SET
	`Value` = $Value
WHERE
	`/local/Issue681Table`.ID = $ID

