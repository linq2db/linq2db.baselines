-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 100
DECLARE $value_1  -- Int32
SET     $value_1 = 1
DECLARE $ValueStr NVarChar(8) -- String
SET     $ValueStr = 'SomeStr1'

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

