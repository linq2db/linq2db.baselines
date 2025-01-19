BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	d."Id",
	d."Amount",
	d."Currency"
FROM
	(
		SELECT DISTINCT
			x."Id"
		FROM
			"TransactionEntity" x
		WHERE
			EXISTS(
				SELECT
					a_Lines."Currency"
				FROM
					"LineEntity" a_Lines
				WHERE
					x."Id" = a_Lines."TransactionId"
				INTERSECT
				SELECT
					t1."item"
				FROM
					(
						SELECT 'A' AS "item" FROM sys.dual
						UNION ALL
						SELECT 'B' FROM sys.dual) t1
			)
	) m_1
		INNER JOIN "LineEntity" d ON m_1."Id" = d."TransactionId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."ValidOn"
FROM
	"TransactionEntity" x
WHERE
	EXISTS(
		SELECT
			a_Lines."Currency"
		FROM
			"LineEntity" a_Lines
		WHERE
			x."Id" = a_Lines."TransactionId"
		INTERSECT
		SELECT
			t1."item"
		FROM
			(
				SELECT 'A' AS "item" FROM sys.dual
				UNION ALL
				SELECT 'B' FROM sys.dual) t1
	)

