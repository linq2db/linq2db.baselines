-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Value  -- Int32
SET     $Value = 100
DECLARE $ValueStr NVarChar(50) -- String
SET     $ValueStr = 'SomeStr1'

INSERT INTO TestSchema.TableWithDataAndSchema
(
	Id,
	"Value",
	ValueStr
)
VALUES
(
	$Id,
	$Value,
	$ValueStr
)
RETURNING
	TestSchema.TableWithDataAndSchema.Id,
	TestSchema.TableWithDataAndSchema."Value",
	TestSchema.TableWithDataAndSchema.ValueStr

