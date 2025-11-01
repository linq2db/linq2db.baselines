-- PostgreSQL.18 PostgreSQL

SELECT
	s."Id",
	s."Value",
	s."ValueStr"
FROM
	"TableWithData" s
WHERE
	s."Id" = 3

-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"TableWithData" s
WHERE
	s."Id" = 3
RETURNING
	OLD."Id" + 1,
	OLD."ValueStr" || 1,
	OLD."ValueStr" IS NOT NULL

