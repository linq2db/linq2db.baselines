-- Informix.DB2 Informix

UPDATE
	OuterTable
SET
	Field1 = (
		SELECT
			t3.Field4
		FROM
			OuterTable t4
				INNER JOIN (
					SELECT
						y_1.Field4,
						ROW_NUMBER() OVER (PARTITION BY y_1.Field3 ORDER BY y_1.Field4) as rn,
						y_1.Field3
					FROM
						InnerTable y_1
				) t3 ON t4.Field2 = t3.Field3 AND t3.rn = 1
		WHERE
			OuterTable.Id = t4.Id
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			OuterTable t2
				INNER JOIN (
					SELECT
						ROW_NUMBER() OVER (PARTITION BY y.Field3 ORDER BY y.Field4) as rn,
						y.Field3
					FROM
						InnerTable y
				) t1 ON t2.Field2 = t1.Field3 AND t1.rn = 1
		WHERE
			OuterTable.Id = t2.Id
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

