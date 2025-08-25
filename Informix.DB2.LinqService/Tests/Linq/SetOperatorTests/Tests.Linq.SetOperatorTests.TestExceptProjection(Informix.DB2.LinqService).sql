BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	r_3.Value_1
FROM
	(
		SELECT
			r.Id,
			r.Value1 as Value_1
		FROM
			SampleData r
		WHERE
			Mod(r.Id, 2) = 0
		EXCEPT
		SELECT
			r_1.Id,
			r_1.Value2 / 10 as Value_1
		FROM
			SampleData r_1
		WHERE
			Mod(r_1.Id, 4) = 0
		EXCEPT
		SELECT
			r_2.Id,
			r_2.Value1 as Value_1
		FROM
			SampleData r_2
		WHERE
			Mod(r_2.Id, 6) = 0
	) r_3

