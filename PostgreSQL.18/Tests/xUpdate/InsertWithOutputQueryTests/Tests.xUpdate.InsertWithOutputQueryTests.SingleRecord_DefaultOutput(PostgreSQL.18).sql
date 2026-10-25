-- PostgreSQL.18 PostgreSQL12
WITH "CTE_1" ("Id", "Value_1", "ValueStr")
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
		NEW."Id",
		NEW."Value",
		NEW."ValueStr"
)
SELECT
	t2."Id",
	t2."Value_1",
	t2."ValueStr"
FROM
	"CTE_1" t2

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Value",
	t1."ValueStr"
FROM
	"InsertOutputQueryTarget" t1
LIMIT 2

