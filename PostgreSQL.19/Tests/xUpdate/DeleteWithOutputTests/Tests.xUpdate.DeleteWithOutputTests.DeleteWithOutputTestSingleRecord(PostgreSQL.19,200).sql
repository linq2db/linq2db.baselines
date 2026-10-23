-- PostgreSQL.19 PostgreSQL12
SELECT
	s."Id",
	s."Value",
	s."ValueStr"
FROM
	"TableWithData" s
WHERE
	s."Id" = 3

-- PostgreSQL.19 PostgreSQL12
DELETE FROM
	"TableWithData" s
WHERE
	s."Id" = 3
RETURNING
	OLD."Id",
	OLD."Value",
	OLD."ValueStr"

