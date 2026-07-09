-- PostgreSQL.18 PostgreSQL13

SELECT
	s."Id",
	s."Value",
	s."ValueStr"
FROM
	"TableWithData" s
WHERE
	s."Id" > 3

-- PostgreSQL.18 PostgreSQL13

DELETE FROM
	"TableWithData" s
WHERE
	s."Id" > 3
RETURNING
	OLD."Id",
	OLD."Value",
	OLD."ValueStr"

