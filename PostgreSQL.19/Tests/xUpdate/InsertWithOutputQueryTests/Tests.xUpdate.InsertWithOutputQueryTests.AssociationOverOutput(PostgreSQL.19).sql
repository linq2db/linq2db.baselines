-- PostgreSQL.19 PostgreSQL12
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
		NEW."ParentId"
)
SELECT
	"a_Parent"."ValueStr"
FROM
	"CTE_1" t
		LEFT JOIN "InsertOutputQuerySource" "a_Parent" ON t."ParentId" = "a_Parent"."Id"

-- PostgreSQL.19 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"InsertOutputQueryAssociated" t1

