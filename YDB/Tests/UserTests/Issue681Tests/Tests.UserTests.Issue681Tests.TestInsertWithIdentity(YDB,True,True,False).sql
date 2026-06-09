-- YDB Ydb
DECLARE $Value Int32
SET     $Value = 10

INSERT INTO `/local/Issue681Table4`
(
	`Value`
)
VALUES
(
	$Value
)
RETURNING
	ID

