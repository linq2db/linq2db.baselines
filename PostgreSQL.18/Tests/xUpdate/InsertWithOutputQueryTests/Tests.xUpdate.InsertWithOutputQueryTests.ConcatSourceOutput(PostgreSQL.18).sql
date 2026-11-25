-- PostgreSQL.18 PostgreSQL12
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
		s."Id" <= 2
	UNION ALL
	SELECT
		s_1."Id",
		s_1."Value",
		s_1."ValueStr"
	FROM
		"InsertOutputQuerySource" s_1
	WHERE
		s_1."Id" >= 9
	RETURNING
		NEW."Id"
)
SELECT
	t."Id"
FROM
	"CTE_1" t

-- PostgreSQL.18 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryTarget" t1

