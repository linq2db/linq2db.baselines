-- PostgreSQL.9.2 PostgreSQL
SELECT
	s."Id",
	s."Value",
	s."ValueStr"
FROM
	"TableWithData" s
WHERE
	s."Id" > 3

-- PostgreSQL.9.2 PostgreSQL
DELETE FROM
	"TableWithData" s
WHERE
	s."Id" > 3
RETURNING
	s."Id" + 1,
	Coalesce(s."ValueStr", '') || '1'

