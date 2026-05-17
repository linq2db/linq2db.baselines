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
	s.Id,
	s."Value",
	s.ValueStr

