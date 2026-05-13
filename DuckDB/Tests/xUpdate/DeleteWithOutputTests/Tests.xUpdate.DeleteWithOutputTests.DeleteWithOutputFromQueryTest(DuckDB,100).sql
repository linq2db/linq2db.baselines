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
	s.Id + 100,
	s."Value" + 100,
	Coalesce(s.ValueStr, '') || Coalesce('100', '')

