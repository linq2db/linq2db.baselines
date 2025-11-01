-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	s."Id",
	s."Value",
	s."ValueStr"
FROM
	"TableWithData" s
WHERE
	s."Id" > 3

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TableWithData" s
WHERE
	s."Id" > 3
RETURNING
	s."Id",
	s."Value",
	s."ValueStr"

