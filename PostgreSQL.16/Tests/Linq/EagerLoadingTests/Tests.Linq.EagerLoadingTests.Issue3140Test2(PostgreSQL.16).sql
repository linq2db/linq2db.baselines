-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."ChildId",
	"a_Child"."Id",
	"a_Child"."Name"
FROM
	"Issue3140Parent" t1
		LEFT JOIN "Issue3140Child" "a_Child" ON t1."ChildId" = "a_Child"."Id"

