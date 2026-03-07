-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."Id",
	p."Name",
	t1."Id",
	t1."ParentId",
	t1."Value_1",
	t1."Name"
FROM
	"MainTable" p
		LEFT JOIN LATERAL (
			SELECT
				"a_Children"."Id",
				"a_Children"."ParentId",
				"a_Children"."Value" as "Value_1",
				"a_Children"."Name"
			FROM
				"ChildTable" "a_Children"
			WHERE
				p."Id" = "a_Children"."ParentId"
			ORDER BY
				"a_Children"."Value" DESC
			LIMIT 1
		) t1 ON 1=1

