-- PostgreSQL.19 PostgreSQL12
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
		NEW."Id"
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

-- PostgreSQL.19 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryTarget" t1

