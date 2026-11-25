-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
WITH "CTE_1" ("Id", "Value_1")
AS
(
	INSERT INTO "InsertOutputQuerySeq"
	(
		"Id",
		"Value"
	)
	SELECT
		nextval('"InsertOutputQuerySeq_Id_seq"'),
		s."Value"
	FROM
		"InsertOutputQuerySource" s
	WHERE
		s."Id" <= 3
	RETURNING
		"InsertOutputQuerySeq"."Id",
		"InsertOutputQuerySeq"."Value"
)
SELECT
	t2."Id",
	t2."Value_1"
FROM
	"CTE_1" t2
ORDER BY
	t2."Id"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)
FROM
	"InsertOutputQuerySeq" t1

