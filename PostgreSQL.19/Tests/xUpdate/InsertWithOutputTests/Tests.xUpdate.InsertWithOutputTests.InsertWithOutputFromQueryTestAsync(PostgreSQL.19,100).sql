-- PostgreSQL.19 PostgreSQL12
DECLARE @param Integer -- Int32
SET     @param = 100
DECLARE @param_1 Text(3) -- String
SET     @param_1 = '100'

INSERT INTO "DestinationTable"
(
	"Id",
	"Value",
	"ValueStr"
)
SELECT
	s."Id" + :param,
	s."Value" + :param,
	Coalesce(s."ValueStr", '') || Coalesce(:param_1, '')
FROM
	"TableWithData" s
WHERE
	s."Id" > 3
RETURNING
	NEW."Id",
	NEW."Value",
	NEW."ValueStr"

-- PostgreSQL.19 PostgreSQL12
DECLARE @param Integer -- Int32
SET     @param = 100
DECLARE @param_1 Text(3) -- String
SET     @param_1 = '100'

SELECT
	s."Id" + :param,
	s."Value" + :param,
	Coalesce(s."ValueStr", '') || Coalesce(:param_1, '')
FROM
	"TableWithData" s
WHERE
	s."Id" > 3

