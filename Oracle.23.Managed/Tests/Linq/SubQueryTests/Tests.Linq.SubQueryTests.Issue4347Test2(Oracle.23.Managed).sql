-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	d."Id",
	d."Amount",
	d."Currency"
FROM
	"TransactionEntity" m_1
		INNER JOIN "LineEntity" d ON m_1."Id" = d."TransactionId"
WHERE
	EXISTS(
		SELECT
			a_Lines."Currency"
		FROM
			"LineEntity" a_Lines
		WHERE
			m_1."Id" = a_Lines."TransactionId"
		INTERSECT
		SELECT
			t1."item"
		FROM
			(
				SELECT 'A' AS "item" FROM sys.dual
				UNION ALL
				SELECT 'B' FROM sys.dual) t1
	)

-- Oracle.23.Managed Oracle.Managed Oracle12

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

