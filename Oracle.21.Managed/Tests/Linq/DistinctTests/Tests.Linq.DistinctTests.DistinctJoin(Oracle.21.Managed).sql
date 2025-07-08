BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	e.ID,
	p_1."SmallIntValue"
FROM
	(
		SELECT DISTINCT
			t1.ID,
			t1."SmallIntValue"
		FROM
			"LinqDataTypes" t1
	) e
		LEFT JOIN (
			SELECT
				p."SmallIntValue",
				p.ID
			FROM
				(
					SELECT DISTINCT
						t2.ID,
						t2."SmallIntValue"
					FROM
						"LinqDataTypes" t2
				) p
		) p_1 ON p_1.ID = e.ID

