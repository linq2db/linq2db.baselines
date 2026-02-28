-- Informix.DB2 Informix

UPDATE
	OuterTable t1
SET
	Field1 = (
		SELECT
			b_1.Field4
		FROM
			(
				SELECT
					1 as c1
				FROM table(set{1})
			) t2
				INNER JOIN (
					SELECT
						b.Field4,
						ROW_NUMBER() OVER (PARTITION BY b.Field3 ORDER BY b.Field4) as rn,
						b.Field3
					FROM
						InnerTable b
				) b_1 ON t1.Field2 = b_1.Field3 AND b_1.rn = 1
	)

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Field1,
	t1.Field2
FROM
	OuterTable t1
ORDER BY
	t1.Id

