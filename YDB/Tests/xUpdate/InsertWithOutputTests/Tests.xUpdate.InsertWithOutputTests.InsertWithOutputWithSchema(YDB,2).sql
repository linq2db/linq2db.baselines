-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Value Int32
SET     $Value = 200
DECLARE $ValueStr Text(8) -- String
SET     $ValueStr = 'SomeStr2'u

INSERT INTO `TestSchema/TableWithDataAndSchema`
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

