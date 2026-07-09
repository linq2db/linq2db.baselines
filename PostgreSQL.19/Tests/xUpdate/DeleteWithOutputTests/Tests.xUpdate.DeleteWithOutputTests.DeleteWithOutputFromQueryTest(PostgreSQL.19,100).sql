-- PostgreSQL.19 PostgreSQL13

SELECT
	s."Id",
	s."Value",
	s."ValueStr"
FROM
	"TableWithData" s
WHERE
	s."Id" > 3

-- PostgreSQL.19 PostgreSQL13
DECLARE @param Integer -- Int32
SET     @param = 100
DECLARE @ValueStr Text(3) -- String
SET     @ValueStr = '100'

DELETE FROM
	"TableWithData" s
WHERE
	s."Id" > 3
RETURNING
	OLD."Id" + :param,
	OLD."Value" + :param,
	Coalesce(OLD."ValueStr", '') || Coalesce(:ValueStr, '')

