BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	s."Id",
	s."Value",
	s."ValueStr"
FROM
	"TableWithData" s
WHERE
	s."Id" = 3

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

DELETE FROM
	"TableWithData" s
WHERE
	s."Id" = 3
RETURNING
	s."Id" + 1,
	s."ValueStr" || 1

