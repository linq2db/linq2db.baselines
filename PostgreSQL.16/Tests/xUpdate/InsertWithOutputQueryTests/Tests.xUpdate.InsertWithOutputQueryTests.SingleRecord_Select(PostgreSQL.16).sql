-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
WITH "CTE_1" ("Id", "ValueStr")
AS
(
	INSERT INTO "InsertOutputQueryTarget"
	(
		"Id",
		"Value",
		"ValueStr"
	)
	VALUES
	(
		42,
		7,
		'single'
	)
	RETURNING
		"InsertOutputQueryTarget"."Id",
		"InsertOutputQueryTarget"."ValueStr"
)
SELECT
	t."Id",
	t."ValueStr"
FROM
	"CTE_1" t

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Value",
	t1."ValueStr"
FROM
	"InsertOutputQueryTarget" t1
LIMIT 2

