-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
WITH "CTE_1" ("Id")
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
		"InsertOutputQueryTarget"."Id"
)
SELECT
	s_1."Id"
FROM
	"InsertOutputQuerySource" s_1
WHERE
	s_1."Id" IN (
		SELECT
			t2."Id"
		FROM
			"CTE_1" t2
	)
ORDER BY
	s_1."Id"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryTarget" t1

