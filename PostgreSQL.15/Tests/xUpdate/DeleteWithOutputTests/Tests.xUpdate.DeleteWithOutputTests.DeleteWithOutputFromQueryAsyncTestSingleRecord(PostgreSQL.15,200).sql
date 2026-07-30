-- PostgreSQL.15 PostgreSQL12
SELECT
	s."Id",
	s."Value",
	s."ValueStr"
FROM
	"TableWithData" s
WHERE
	s."Id" = 3

-- PostgreSQL.15 PostgreSQL12
DECLARE @param Integer -- Int32
SET     @param = 200
DECLARE @param_1 Text(3) -- String
SET     @param_1 = '200'

DELETE FROM
	"TableWithData" s
WHERE
	s."Id" = 3
RETURNING
	s."Id" + :param,
	s."Value" + :param,
	Coalesce(s."ValueStr", '') || Coalesce(:param_1, '')

