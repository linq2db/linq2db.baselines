-- PostgreSQL.12 PostgreSQL12
SELECT
	s."Id",
	s."Value",
	s."ValueStr"
FROM
	"TableWithData" s
WHERE
	s."Id" > 3

-- PostgreSQL.12 PostgreSQL12
DELETE FROM
	"TableWithData" s
WHERE
	s."Id" > 3
RETURNING
	s."Id" + 1,
	Coalesce(s."ValueStr", '') || '1'

