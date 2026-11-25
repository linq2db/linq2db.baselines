-- PostgreSQL.9.3 PostgreSQL
WITH "CTE_1" ("Id", "Value_1")
AS
(
	INSERT INTO "InsertOutputQueryIdentity"
	(
		"Value"
	)
	VALUES
	(
		5
	)
	RETURNING
		"InsertOutputQueryIdentity"."Id",
		"InsertOutputQueryIdentity"."Value"
)
SELECT
	t."Id",
	t."Value_1"
FROM
	"CTE_1" t

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Value"
FROM
	"InsertOutputQueryIdentity" t1
LIMIT 2

