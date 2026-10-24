-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
WITH "CTE_1" ("Value_1")
AS
(
	INSERT INTO "InsertOutputQueryTarget"
	(
		"Id",
		"Value",
		"ValueStr"
	)
	SELECT
		t1."Id",
		-t1."Value",
		t1."ValueStr"
	FROM
		"InsertOutputQuerySource" t1
	RETURNING
		"InsertOutputQueryTarget"."Value"
)
SELECT
	COUNT(*)
FROM
	"CTE_1" t3
WHERE
	t3."Value_1" * 2 > 10

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryTarget" t1

