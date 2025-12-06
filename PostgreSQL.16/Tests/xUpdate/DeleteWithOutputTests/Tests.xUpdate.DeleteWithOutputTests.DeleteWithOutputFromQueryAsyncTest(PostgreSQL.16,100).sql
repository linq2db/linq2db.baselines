-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	s."Id",
	s."Value",
	s."ValueStr"
FROM
	"TableWithData" s
WHERE
	s."Id" > 3

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @param Integer -- Int32
SET     @param = 100

DELETE FROM
	"TableWithData" s
WHERE
	s."Id" > 3
RETURNING
	s."Id" + :param,
	s."Value" + :param,
	s."ValueStr" || :param

