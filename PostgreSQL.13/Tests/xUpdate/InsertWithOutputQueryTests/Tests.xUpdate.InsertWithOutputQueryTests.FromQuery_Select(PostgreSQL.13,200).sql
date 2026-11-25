-- PostgreSQL.13 PostgreSQL12
DECLARE @param Integer -- Int32
SET     @param = 200

WITH "CTE_1" ("Id", "Value_1", "ValueStr")
AS
(
	INSERT INTO "InsertOutputQueryTarget"
	(
		"Id",
		"Value",
		"ValueStr"
	)
	SELECT
		s."Id" + :param,
		s."Value" + :param,
		Coalesce(s."ValueStr", '') || '_new'
	FROM
		"InsertOutputQuerySource" s
	WHERE
		s."Id" > 3
	RETURNING
		"InsertOutputQueryTarget"."Id",
		"InsertOutputQueryTarget"."Value",
		"InsertOutputQueryTarget"."ValueStr"
)
SELECT
	t2."Id",
	t2."Value_1",
	t2."ValueStr"
FROM
	"CTE_1" t2
ORDER BY
	t2."Id"

-- PostgreSQL.13 PostgreSQL12
SELECT
	t."Id"
FROM
	"InsertOutputQueryTarget" t
ORDER BY
	t."Id"

