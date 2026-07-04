-- PostgreSQL.19 PostgreSQL13

SELECT
	s."Id",
	s."Value",
	s."ValueStr"
FROM
	"TableWithData" s
WHERE
	s."Id" = 3

-- PostgreSQL.19 PostgreSQL13

DELETE FROM
	"TableWithData" s
WHERE
	s."Id" = 3
RETURNING
	OLD."Id" + 1,
	Coalesce(OLD."ValueStr", '') || '1',
	OLD."ValueStr" IS NOT NULL

