-- PostgreSQL.18 PostgreSQL12
UPDATE
	"ParentTable"
SET
	"Value" = "ParentTable"."Value" * 10
FROM
	"ChildTable" c_1
WHERE
	"ParentTable"."Id" = 2 AND c_1."ParentId" = "ParentTable"."Id"

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."Id",
	p."Value"
FROM
	"ParentTable" p
WHERE
	p."Id" = 2
LIMIT 1

