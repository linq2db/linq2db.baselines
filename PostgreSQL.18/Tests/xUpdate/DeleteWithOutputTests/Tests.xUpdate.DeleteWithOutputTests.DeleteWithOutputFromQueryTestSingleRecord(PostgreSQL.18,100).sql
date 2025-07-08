BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	s."Id",
	s."Value",
	s."ValueStr"
FROM
	"TableWithData" s
WHERE
	s."Id" = 3

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @param Integer -- Int32
SET     @param = 100

DELETE FROM
	"TableWithData" s
WHERE
	s."Id" = 3
RETURNING
	OLD."Id" + :param,
	OLD."Value" + :param,
	OLD."ValueStr" || :param

