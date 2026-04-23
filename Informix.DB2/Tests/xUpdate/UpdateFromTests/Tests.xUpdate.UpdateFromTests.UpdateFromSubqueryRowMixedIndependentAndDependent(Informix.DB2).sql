-- Informix.DB2 Informix

UPDATE
	UpdateSubquerySourceTable
SET
	FirstName = (
		SELECT
			(
				SELECT
					'literalFirst'
				FROM table(set{1})
			)
		FROM
			(
				SELECT
					ROW_NUMBER() OVER (PARTITION BY t.Id ORDER BY t.Id) as rn,
					t.Id
				FROM
					UpdateSubquerySourceTable t
			) t1
		WHERE
			t1.Id = UpdateSubquerySourceTable.Id + 1 AND t1.rn = 1
	),
	LastName = (
		SELECT
			(
				SELECT
					t2.LastName
				FROM table(set{1})
			)
		FROM
			(
				SELECT
					t_1.LastName,
					ROW_NUMBER() OVER (PARTITION BY t_1.Id ORDER BY t_1.Id) as rn,
					t_1.Id
				FROM
					UpdateSubquerySourceTable t_1
			) t2
		WHERE
			t2.Id = UpdateSubquerySourceTable.Id + 1 AND t2.rn = 1
	)
WHERE
	UpdateSubquerySourceTable.Id = 1

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.FirstName,
	t1.LastName
FROM
	UpdateSubquerySourceTable t1
ORDER BY
	t1.Id

