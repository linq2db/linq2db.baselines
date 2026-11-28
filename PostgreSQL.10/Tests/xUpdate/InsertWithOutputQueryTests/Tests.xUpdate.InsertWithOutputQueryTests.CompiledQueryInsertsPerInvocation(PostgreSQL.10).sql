-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 4

WITH "CTE_1" ("Value_1")
AS
(
	INSERT INTO "InsertOutputQueryIdentity"
	(
		"Value"
	)
	VALUES
	(
		:Value
	)
	RETURNING
		"InsertOutputQueryIdentity"."Value"
)
SELECT
	SUM(t2."Value_1")
FROM
	"CTE_1" t2

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 5

WITH "CTE_1" ("Value_1")
AS
(
	INSERT INTO "InsertOutputQueryIdentity"
	(
		"Value"
	)
	VALUES
	(
		:Value
	)
	RETURNING
		"InsertOutputQueryIdentity"."Value"
)
SELECT
	SUM(t2."Value_1")
FROM
	"CTE_1" t2

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t."Value"
FROM
	"InsertOutputQueryIdentity" t
ORDER BY
	t."Value"

