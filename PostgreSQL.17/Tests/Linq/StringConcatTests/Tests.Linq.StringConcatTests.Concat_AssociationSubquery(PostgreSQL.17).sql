-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."Id",
	Coalesce((
		SELECT
			STRING_AGG(Coalesce("a_Children"."Value", ''), '' ORDER BY "a_Children"."Id" NULLS FIRST)
		FROM
			"ConcatChild" "a_Children"
		WHERE
			p."Id" = "a_Children"."ParentId"
	), '')
FROM
	"ConcatParent" p
ORDER BY
	p."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	m_1."Id",
	d."Id",
	d."ParentId",
	d."Value"
FROM
	"ConcatParent" m_1
		INNER JOIN "ConcatChild" d ON m_1."Id" = d."ParentId"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"ConcatParent" t1

