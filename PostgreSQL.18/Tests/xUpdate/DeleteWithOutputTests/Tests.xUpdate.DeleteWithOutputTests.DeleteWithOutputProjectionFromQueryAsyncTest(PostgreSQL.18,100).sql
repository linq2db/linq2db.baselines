BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	s."Id",
	s."Value",
	s."ValueStr"
FROM
	"TableWithData" s
WHERE
	s."Id" > 3

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

DELETE FROM
	"TableWithData" s
WHERE
	s."Id" > 3
RETURNING
	OLD."Id" + 1,
	OLD."ValueStr" || 1

