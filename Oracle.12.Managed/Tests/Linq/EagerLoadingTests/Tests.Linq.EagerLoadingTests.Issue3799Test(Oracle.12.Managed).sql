﻿BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
--  Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	m_1."Children",
	d."Name"
FROM
	(
		SELECT DISTINCT
			t1."Children"
		FROM
			"Test3799Item" item_1
				OUTER APPLY (
					SELECT
						a_Children."Id" as "Children"
					FROM
						"Test3799Item" a_Children
					WHERE
						item_1."Id" = a_Children."ParentId"
					FETCH NEXT 1 ROWS ONLY
				) t1
	) m_1
		INNER JOIN "Test3799Item" d ON m_1."Children" = d."ParentId" OR m_1."Children" IS NULL AND d."ParentId" IS NULL

BeforeExecute
DisposeTransaction
BeforeExecute
--  Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	item_1."Name",
	t1."Name",
	t1."Children"
FROM
	"Test3799Item" item_1
		OUTER APPLY (
			SELECT
				a_Children."Name",
				a_Children."Id" as "Children"
			FROM
				"Test3799Item" a_Children
			WHERE
				item_1."Id" = a_Children."ParentId"
			FETCH NEXT 1 ROWS ONLY
		) t1

