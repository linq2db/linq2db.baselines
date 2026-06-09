-- YDB Ydb
DECLARE $Value Int32
SET     $Value = 100
DECLARE $value_1 Int32
SET     $value_1 = 1
DECLARE $ValueStr Text(8) -- String
SET     $ValueStr = 'SomeStr1'u

INSERT INTO TableWithData
(
	`Value`,
	Id,
	ValueStr
)
VALUES
(
	$Value,
	$value_1,
	$ValueStr
)
RETURNING
	Id,
	`Value`,
	ValueStr

