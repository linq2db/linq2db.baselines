-- YDB Ydb
DECLARE $Value Int32
SET     $Value = 100
DECLARE $Id Int32
SET     $Id = 1
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
	$Id,
	$ValueStr
)
RETURNING
	Id,
	`Value`,
	ValueStr

