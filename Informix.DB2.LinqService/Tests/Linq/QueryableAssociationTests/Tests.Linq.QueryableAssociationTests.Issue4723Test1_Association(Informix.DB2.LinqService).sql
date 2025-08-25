BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t3.Id,
	t1.ExpressionMethod,
	t2.Association
FROM
	Issue4723Table1 t3
		LEFT JOIN (
			SELECT
				se."Value" as ExpressionMethod,
				ROW_NUMBER() OVER (PARTITION BY se.Id ORDER BY se.Id) as rn,
				se.Id
			FROM
				Issue4723Table2 se
		) t1 ON t1.Id = t3.Id AND t1.rn <= 1
		LEFT JOIN (
			SELECT
				a_Association."Value" as Association,
				ROW_NUMBER() OVER (PARTITION BY a_Association.Id ORDER BY a_Association.Id) as rn,
				a_Association.Id
			FROM
				Issue4723Table2 a_Association
		) t2 ON t2.Id = t3.Id AND t2.rn <= 1

