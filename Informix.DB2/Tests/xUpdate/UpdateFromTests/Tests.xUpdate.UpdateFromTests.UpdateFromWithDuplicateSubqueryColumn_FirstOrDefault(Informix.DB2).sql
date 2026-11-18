-- Informix.DB2 Informix
DECLARE @id1 Integer(4) -- Int32
SET     @id1 = 1

UPDATE
	InsertFromWithConstantsTable
SET
	Value1 = (
		SELECT
			t1.Value1
		FROM
			InsertFromWithConstantsTable r_2
				LEFT JOIN (
					SELECT FIRST 1
						r_1.Value3 as Value1
					FROM
						InsertFromWithConstantsTable r_1
					WHERE
						r_1.Id = @id1
				) t1 ON 1=1
		WHERE
			InsertFromWithConstantsTable.Id = r_2.Id
	),
	Value2 = (
		SELECT
			t2.Value1
		FROM
			InsertFromWithConstantsTable r_4
				LEFT JOIN (
					SELECT FIRST 1
						r_3.Value3 as Value1
					FROM
						InsertFromWithConstantsTable r_3
					WHERE
						r_3.Id = @id1
				) t2 ON 1=1
		WHERE
			InsertFromWithConstantsTable.Id = r_4.Id
	),
	Value3 = 'string 1',
	Value4 = 'string 1'
WHERE
	EXISTS(
		SELECT
			*
		FROM
			InsertFromWithConstantsTable r
		WHERE
			InsertFromWithConstantsTable.Id = r.Id
	)

