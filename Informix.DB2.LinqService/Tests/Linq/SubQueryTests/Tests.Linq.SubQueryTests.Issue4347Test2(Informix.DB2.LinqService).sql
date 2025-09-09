BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	m_1.Id,
	d.Id,
	d.Amount,
	d.Currency
FROM
	(
		SELECT DISTINCT
			x.Id
		FROM
			TransactionEntity x
		WHERE
			EXISTS(
				SELECT
					a_Lines.Currency
				FROM
					LineEntity a_Lines
				WHERE
					x.Id = a_Lines.TransactionId
				INTERSECT
				SELECT
					t1."item"
				FROM
					(
						SELECT 'A'::NVarChar(255) AS "item" FROM table(set{1})
						UNION ALL
						SELECT 'B'::NVarChar(255) FROM table(set{1})) t1
			)
	) m_1
		INNER JOIN LineEntity d ON m_1.Id = d.TransactionId

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	x.Id,
	x.ValidOn
FROM
	TransactionEntity x
WHERE
	EXISTS(
		SELECT
			a_Lines.Currency
		FROM
			LineEntity a_Lines
		WHERE
			x.Id = a_Lines.TransactionId
		INTERSECT
		SELECT
			t1."item"
		FROM
			(
				SELECT 'A'::NVarChar(255) AS "item" FROM table(set{1})
				UNION ALL
				SELECT 'B'::NVarChar(255) FROM table(set{1})) t1
	)

