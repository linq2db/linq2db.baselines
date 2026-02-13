-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	m_1."Id",
	d."Name"
FROM
	(
		SELECT DISTINCT
			t1."Id"
		FROM
			"Test3799Item" item_1
				LEFT JOIN LATERAL (
					SELECT
						"a_Children"."Id"
					FROM
						"Test3799Item" "a_Children"
					WHERE
						item_1."Id" = "a_Children"."ParentId"
					LIMIT 1
				) t1 ON 1=1
	) m_1
		INNER JOIN "Test3799Item" d ON m_1."Id" = d."ParentId"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	item_1."Name",
	t1."Name",
	t1."Id"
FROM
	"Test3799Item" item_1
		LEFT JOIN LATERAL (
			SELECT
				"a_Children"."Name",
				"a_Children"."Id"
			FROM
				"Test3799Item" "a_Children"
			WHERE
				item_1."Id" = "a_Children"."ParentId"
			LIMIT 1
		) t1 ON 1=1

