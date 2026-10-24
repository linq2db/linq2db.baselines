-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
WITH "CTE_1" ("Id", "Kind", "Value_1")
AS
(
	INSERT INTO "InsertOutputQueryTph"
	(
		"Id",
		"Kind",
		"Value"
	)
	VALUES
	(
		1,
		2,
		5
	)
	RETURNING
		"InsertOutputQueryTph"."Id",
		"InsertOutputQueryTph"."Kind",
		"InsertOutputQueryTph"."Value"
)
SELECT
	t2."Kind",
	t2."Id",
	t2."Value_1"
FROM
	"CTE_1" t2

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryTph" t1

