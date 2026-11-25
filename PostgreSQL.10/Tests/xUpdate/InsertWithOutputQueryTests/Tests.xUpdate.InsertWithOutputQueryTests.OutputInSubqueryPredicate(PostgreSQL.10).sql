-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryTarget" t1

