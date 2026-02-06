-- PostgreSQL.18 PostgreSQL
DECLARE @param Integer -- Int32
SET     @param = 100
DECLARE @ValueStr Text(3) -- String
SET     @ValueStr = '100'

INSERT INTO "DestinationTable"
(
	"Id",
	"Value",
	"ValueStr"
)
SELECT
	s."Id" + :param,
	s."Value" + :param,
	s."ValueStr" || :ValueStr
FROM
	"TableWithData" s
WHERE
	s."Id" = 3
RETURNING
	NEW."Id",
	NEW."Value",
	NEW."ValueStr"

-- PostgreSQL.18 PostgreSQL
DECLARE @param Integer -- Int32
SET     @param = 100
DECLARE @ValueStr Text(3) -- String
SET     @ValueStr = '100'

SELECT
	s."Id" + :param,
	s."Value" + :param,
	s."ValueStr" || :ValueStr
FROM
	"TableWithData" s
WHERE
	s."Id" = 3

