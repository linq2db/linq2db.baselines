-- YDB Ydb
DECLARE Value Int32
SET     Value = 10

INSERT INTO QualifiedIdTable
(
	`Value`
)
VALUES
(
	$Value
)
RETURNING
	ID

