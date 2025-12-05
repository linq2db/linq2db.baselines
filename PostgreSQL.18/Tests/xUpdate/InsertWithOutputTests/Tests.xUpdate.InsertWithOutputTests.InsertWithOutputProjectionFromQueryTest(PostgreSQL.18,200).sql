-- PostgreSQL.18 PostgreSQL
DECLARE @param Integer -- Int32
SET     @param = 200

INSERT INTO "DestinationTable"
(
	"Id",
	"Value",
	"ValueStr"
)
SELECT
	s."Id" + 100 + :param,
	s."Value" + 100,
	s."ValueStr" || 100
FROM
	"TableWithData" s
WHERE
	s."Id" > 3
RETURNING
	NEW."Id" + 1,
	NEW."ValueStr" || 1

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Value",
	t1."ValueStr"
FROM
	"DestinationTable" t1

-- PostgreSQL.18 PostgreSQL

SELECT
	t."Id" + 1,
	t."ValueStr" || 1
FROM
	"DestinationTable" t

