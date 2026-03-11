-- PostgreSQL.13 PostgreSQL

SELECT
	s."Id",
	s."Value",
	s."ValueStr"
FROM
	"TableWithData" s
WHERE
	s."Id" > 3

-- PostgreSQL.13 PostgreSQL
DECLARE @param Integer -- Int32
SET     @param = 100
DECLARE @ValueStr Text(3) -- String
SET     @ValueStr = '100'

DELETE FROM
	"TableWithData" s
WHERE
	s."Id" > 3
RETURNING
	s."Id" + :param,
	s."Value" + :param,
	s."ValueStr" || :ValueStr

