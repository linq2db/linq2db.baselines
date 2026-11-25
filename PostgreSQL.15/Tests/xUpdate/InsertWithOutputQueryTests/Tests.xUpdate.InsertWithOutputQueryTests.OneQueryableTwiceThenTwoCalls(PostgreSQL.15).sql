-- PostgreSQL.15 PostgreSQL12
DECLARE @value Integer -- Int32
SET     @value = 11

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
	t2."Value_1"
FROM
	"CTE_1" t2
UNION ALL
SELECT
	t3."Value_1"
FROM
	"CTE_1" t3

-- PostgreSQL.15 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryIdentity" t1

-- PostgreSQL.15 PostgreSQL12
DECLARE @value Integer -- Int32
SET     @value = 12
DECLARE @value_1 Integer -- Int32
SET     @value_1 = 13

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
		:value_1
	)
	RETURNING
		"InsertOutputQueryIdentity"."Value"
)
SELECT
	t3."Value_1"
FROM
	"CTE_1" t3
UNION ALL
SELECT
	t4."Value_1"
FROM
	"CTE_2" t4

-- PostgreSQL.15 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryIdentity" t1

