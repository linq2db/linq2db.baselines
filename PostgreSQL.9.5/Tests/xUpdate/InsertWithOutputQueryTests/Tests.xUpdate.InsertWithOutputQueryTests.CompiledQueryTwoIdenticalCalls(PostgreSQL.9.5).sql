-- PostgreSQL.9.5 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 7

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
),
"CTE_2" ("Value_1")
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
	COUNT(*)
FROM
	(
		SELECT
			t3."Value_1"
		FROM
			"CTE_1" t3
		UNION ALL
		SELECT
			t4."Value_1"
		FROM
			"CTE_2" t4
	) t5

-- PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryIdentity" t1

