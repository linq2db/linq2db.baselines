-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	s."Id",
	s."Value",
	s."ValueStr"
FROM
	"TableWithData" s
WHERE
	s."Id" = 3

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DELETE FROM
	"TableWithData" s
WHERE
	s."Id" = 3
RETURNING
	s."Id" + 1,
	s."ValueStr" || 1::text,
	s."ValueStr" IS NOT NULL

