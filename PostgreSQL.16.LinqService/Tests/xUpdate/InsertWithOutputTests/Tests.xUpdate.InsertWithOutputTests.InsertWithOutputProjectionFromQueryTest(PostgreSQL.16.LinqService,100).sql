BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @param Integer -- Int32
SET     @param = 100

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
	"DestinationTable"."Id" + 1,
	"DestinationTable"."ValueStr" || 1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."Value",
	t1."ValueStr"
FROM
	"DestinationTable" t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t."Id" + 1,
	t."ValueStr" || 1
FROM
	"DestinationTable" t

