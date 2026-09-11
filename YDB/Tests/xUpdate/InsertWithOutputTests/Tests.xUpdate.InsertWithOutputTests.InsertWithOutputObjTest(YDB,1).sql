-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Value Int32
SET     $Value = 100
DECLARE $ValueStr Text(8) -- String
SET     $ValueStr = 'SomeStr1'u

INSERT INTO TableWithData
(
	Id,
	`Value`,
	ValueStr
)
VALUES
(
	$Id,
	$Value,
	$ValueStr
)
RETURNING
	Id,
	`Value`,
	ValueStr

