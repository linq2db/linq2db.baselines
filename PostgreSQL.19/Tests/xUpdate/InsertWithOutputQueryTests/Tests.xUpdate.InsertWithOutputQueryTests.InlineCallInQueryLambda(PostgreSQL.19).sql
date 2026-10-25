-- PostgreSQL.19 PostgreSQL12
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

-- PostgreSQL.19 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryTarget" t1

