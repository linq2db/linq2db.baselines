BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	s."Id",
	s."Value",
	s."ValueStr"
FROM
	"TableWithData" s
WHERE
	s."Id" = 3

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"TableWithData" s
WHERE
	s."Id" = 3
RETURNING
	s."Id" + 1,
	s."ValueStr" || 1,
	s."ValueStr" IS NOT NULL

