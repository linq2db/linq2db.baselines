-- DuckDB

SELECT
	s.Id,
	s."Value",
	s.ValueStr
FROM
	TableWithData s
WHERE
	s.Id = 3

-- DuckDB

DELETE FROM
	TableWithData s
WHERE
	s.Id = 3
RETURNING
	s.Id + 1,
	s.ValueStr || '1',
	s.ValueStr IS NOT NULL

