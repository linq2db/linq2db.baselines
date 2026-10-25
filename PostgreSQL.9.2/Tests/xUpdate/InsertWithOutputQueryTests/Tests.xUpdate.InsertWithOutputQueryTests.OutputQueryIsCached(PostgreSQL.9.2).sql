-- PostgreSQL.9.2 PostgreSQL
DECLARE @value Integer -- Int32
SET     @value = 1

WITH "CTE_1" ("Value_1")
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
		"InsertOutputQueryIdentity"."Value"
)
SELECT
	t."Value_1"
FROM
	"CTE_1" t

-- PostgreSQL.9.2 PostgreSQL
DECLARE @value Integer -- Int32
SET     @value = 2

WITH "CTE_1" ("Value_1")
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
		"InsertOutputQueryIdentity"."Value"
)
SELECT
	t."Value_1"
FROM
	"CTE_1" t

-- PostgreSQL.9.2 PostgreSQL
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryIdentity" t1

