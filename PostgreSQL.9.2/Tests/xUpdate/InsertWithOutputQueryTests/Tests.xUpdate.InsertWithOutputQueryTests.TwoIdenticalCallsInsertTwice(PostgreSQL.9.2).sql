-- PostgreSQL.9.2 PostgreSQL
DECLARE @value Integer -- Int32
SET     @value = 5

WITH "CTE_1" ("Id")
AS
(
	INSERT INTO "InsertOutputQueryIdentity"
	(
		"Value"
	)
	VALUES
	(
		:value
	)
	RETURNING
		"InsertOutputQueryIdentity"."Id"
),
"CTE_2" ("Id")
AS
(
	INSERT INTO "InsertOutputQueryIdentity"
	(
		"Value"
	)
	VALUES
	(
		:value
	)
	RETURNING
		"InsertOutputQueryIdentity"."Id"
)
SELECT
	t3."Id"
FROM
	"CTE_1" t3
UNION ALL
SELECT
	t4."Id"
FROM
	"CTE_2" t4

-- PostgreSQL.9.2 PostgreSQL
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryIdentity" t1

