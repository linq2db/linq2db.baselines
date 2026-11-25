-- PostgreSQL.9.5 PostgreSQL
WITH "CTE_1" (c1)
AS
(
	INSERT INTO "InsertOutputQueryTarget"
	(
		"Id",
		"Value",
		"ValueStr"
	)
	VALUES
	(
		42,
		1,
		'inline'
	)
	RETURNING
		1
)
SELECT
	s."Id",
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

-- PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryTarget" t1

