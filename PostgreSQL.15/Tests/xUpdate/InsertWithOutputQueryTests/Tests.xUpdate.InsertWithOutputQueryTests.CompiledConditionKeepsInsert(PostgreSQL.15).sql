-- PostgreSQL.15 PostgreSQL12
WITH "CTE_1" (c1)
AS
(
	INSERT INTO "InsertOutputQueryIdentity"
	(
		"Value"
	)
	VALUES
	(
		1
	)
	RETURNING
		1
)
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"CTE_1" t2
	)
FROM
	"InsertOutputQuerySource" s
WHERE
	s."Id" = 2
LIMIT 1

-- PostgreSQL.15 PostgreSQL12
WITH "CTE_1" (c1)
AS
(
	INSERT INTO "InsertOutputQueryIdentity"
	(
		"Value"
	)
	VALUES
	(
		1
	)
	RETURNING
		1
)
SELECT
	0
FROM
	"InsertOutputQuerySource" s
WHERE
	s."Id" = 2
LIMIT 1

-- PostgreSQL.15 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryIdentity" t1

