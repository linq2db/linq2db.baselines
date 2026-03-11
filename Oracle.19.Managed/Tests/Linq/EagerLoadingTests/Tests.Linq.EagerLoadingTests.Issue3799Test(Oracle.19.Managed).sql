-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	d."Name"
FROM
	(
		SELECT DISTINCT
			t1."Id"
		FROM
			"Test3799Item" item_1
				OUTER APPLY (
					SELECT
						a_Children."Id"
					FROM
						"Test3799Item" a_Children
					WHERE
						item_1."Id" = a_Children."ParentId"
					FETCH NEXT 1 ROWS ONLY
				) t1
	) m_1
		INNER JOIN "Test3799Item" d ON m_1."Id" = d."ParentId"

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	item_1."Name",
	t1."Name",
	t1."Id"
FROM
	"Test3799Item" item_1
		OUTER APPLY (
			SELECT
				a_Children."Name",
				a_Children."Id"
			FROM
				"Test3799Item" a_Children
			WHERE
				item_1."Id" = a_Children."ParentId"
			FETCH NEXT 1 ROWS ONLY
		) t1

