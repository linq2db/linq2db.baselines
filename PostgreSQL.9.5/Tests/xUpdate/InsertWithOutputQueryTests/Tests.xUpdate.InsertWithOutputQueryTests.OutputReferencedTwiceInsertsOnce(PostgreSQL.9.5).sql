-- PostgreSQL.9.5 PostgreSQL
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
	COUNT(*)
FROM
	(
		SELECT
			t2."Id"
		FROM
			"CTE_1" t2
		UNION ALL
		SELECT
			t3."Id"
		FROM
			"CTE_1" t3
	) t4

-- PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryTarget" t1

