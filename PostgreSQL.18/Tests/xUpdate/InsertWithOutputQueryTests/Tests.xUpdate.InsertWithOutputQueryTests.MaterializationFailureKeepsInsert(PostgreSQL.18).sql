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
		s."Id" <= 3
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

