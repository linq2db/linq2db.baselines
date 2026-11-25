-- PostgreSQL.9.5 PostgreSQL
WITH "CTE_1" ("ParentId")
AS
(
	INSERT INTO "InsertOutputQueryAssociated"
	(
		"Id",
		"ParentId"
	)
	SELECT
		s."Id",
		s."Id"
	FROM
		"InsertOutputQuerySource" s
	WHERE
		s."Id" <= 3
	RETURNING
		"InsertOutputQueryAssociated"."ParentId"
)
SELECT
	"a_Parent"."ValueStr"
FROM
	"CTE_1" t
		LEFT JOIN "InsertOutputQuerySource" "a_Parent" ON t."ParentId" = "a_Parent"."Id"

-- PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryAssociated" t1

