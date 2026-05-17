-- DuckDB

SELECT
	s.Id,
	s."Value",
	s.ValueStr
FROM
	TableWithData s
WHERE
	s.Id > 3

-- DuckDB

DELETE FROM
	TableWithData s
WHERE
	s.Id > 3
RETURNING
	s.Id + 200,
	s."Value" + 200,
	Coalesce(s.ValueStr, '') || '200'

