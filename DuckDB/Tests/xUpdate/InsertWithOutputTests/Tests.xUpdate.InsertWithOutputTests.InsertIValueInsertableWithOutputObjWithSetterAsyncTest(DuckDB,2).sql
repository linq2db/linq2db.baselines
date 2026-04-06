-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 200
DECLARE $value_1  -- Int32
SET     $value_1 = 2
DECLARE $ValueStr NVarChar(8) -- String
SET     $ValueStr = 'SomeStr2'

INSERT INTO TableWithData
(
	"Value",
	Id,
	ValueStr
)
VALUES
(
	CAST($Value AS INTEGER),
	CAST($value_1 AS INTEGER),
	CAST($ValueStr AS VARCHAR)
)
RETURNING
	TableWithData.Id,
	TableWithData."Value",
	TableWithData.ValueStr

