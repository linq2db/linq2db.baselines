-- DuckDB
DECLARE $param  -- Int32
SET     $param = 100
DECLARE $param_1 NVarChar(3) -- String
SET     $param_1 = '100'

INSERT INTO DestinationTable
(
	Id,
	"Value",
	ValueStr
)
SELECT
	s.Id + $param,
	s."Value" + $param,
	Coalesce(s.ValueStr, '') || Coalesce($param_1, '')
FROM
	TableWithData s
WHERE
	s.Id > 3
RETURNING
	DestinationTable.Id,
	DestinationTable."Value",
	DestinationTable.ValueStr

-- DuckDB
DECLARE $param  -- Int32
SET     $param = 100
DECLARE $param_1 NVarChar(3) -- String
SET     $param_1 = '100'

SELECT
	s.Id + $param,
	s."Value" + $param,
	Coalesce(s.ValueStr, '') || Coalesce($param_1, '')
FROM
	TableWithData s
WHERE
	s.Id > 3

