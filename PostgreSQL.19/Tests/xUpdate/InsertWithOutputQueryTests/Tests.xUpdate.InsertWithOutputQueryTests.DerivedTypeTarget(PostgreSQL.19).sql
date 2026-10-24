-- PostgreSQL.19 PostgreSQL12
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
		NEW."Id",
		NEW."Kind",
		NEW."Value"
)
SELECT
	t2."Kind",
	t2."Id",
	t2."Value_1"
FROM
	"CTE_1" t2

-- PostgreSQL.19 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryTph" t1

