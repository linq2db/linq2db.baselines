-- PostgreSQL.11 PostgreSQL
WITH "CTE_1" (c1)
AS
(
	INSERT INTO "InsertOutputQueryTarget"
	(
		"Id",
		"Value",
		"ValueStr"
	)
	SELECT
		s."Id",
		s."Value",
		s."ValueStr"
	FROM
		"InsertOutputQuerySource" s
	WHERE
		s."Id" <= 3
	RETURNING
		1
)
SELECT
	COUNT(*)
FROM
	"CTE_1" t2

-- PostgreSQL.11 PostgreSQL
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryTarget" t1

