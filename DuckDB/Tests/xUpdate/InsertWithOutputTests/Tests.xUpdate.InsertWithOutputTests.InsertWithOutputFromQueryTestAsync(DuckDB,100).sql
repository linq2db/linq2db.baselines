-- DuckDB
DECLARE $param  -- Int32
SET     $param = 100
DECLARE $ValueStr NVarChar(3) -- String
SET     $ValueStr = '100'

INSERT INTO DestinationTable
(
	Id,
	"Value",
	ValueStr
)
SELECT
	s.Id + $param,
	s."Value" + $param,
	Coalesce(s.ValueStr, '') || Coalesce($ValueStr, '')
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
DECLARE $ValueStr NVarChar(3) -- String
SET     $ValueStr = '100'

SELECT
	s.Id + $param,
	s."Value" + $param,
	Coalesce(s.ValueStr, '') || Coalesce($ValueStr, '')
FROM
	TableWithData s
WHERE
	s.Id > 3

