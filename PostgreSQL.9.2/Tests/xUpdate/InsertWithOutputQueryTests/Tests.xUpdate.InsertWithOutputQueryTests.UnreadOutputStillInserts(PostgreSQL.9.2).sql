-- PostgreSQL.9.2 PostgreSQL
WITH "CTE_1" AS
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
	s_1."Id"
FROM
	"InsertOutputQuerySource" s_1
ORDER BY
	s_1."Id"

-- PostgreSQL.9.2 PostgreSQL
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryTarget" t1

