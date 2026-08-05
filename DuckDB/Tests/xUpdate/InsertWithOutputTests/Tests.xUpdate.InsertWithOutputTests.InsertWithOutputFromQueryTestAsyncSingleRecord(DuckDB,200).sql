-- DuckDB
DECLARE $param  -- Int32
SET     $param = 200
DECLARE $ValueStr NVarChar(3) -- String
SET     $ValueStr = '200'

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
	s.Id = 3
RETURNING
	DestinationTable.Id,
	DestinationTable."Value",
	DestinationTable.ValueStr

-- DuckDB
DECLARE $param  -- Int32
SET     $param = 200
DECLARE $ValueStr NVarChar(3) -- String
SET     $ValueStr = '200'

SELECT
	s.Id + $param,
	s."Value" + $param,
	Coalesce(s.ValueStr, '') || Coalesce($ValueStr, '')
FROM
	TableWithData s
WHERE
	s.Id = 3

