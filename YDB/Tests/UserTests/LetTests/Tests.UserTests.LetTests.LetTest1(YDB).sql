-- YDB Ydb
SELECT
	t1_1.Id as Id,
	t1_1.Field6 as Field6
FROM
	Table2 t1_1
		INNER JOIN Table3 a_Ref3 ON t1_1.Field6 = a_Ref3.Field6
		INNER JOIN (
			SELECT
				a_Ref4.Field3 as Field3,
				a_Ref1.Field3 as Field3_1,
				a_Ref1.Id as Id
			FROM
				Table1 a_Ref4
					LEFT JOIN Table1 a_Ref1 ON a_Ref4.Field5 = a_Ref1.Field3
		) t1 ON a_Ref3.Field3 = t1.Field3
		LEFT JOIN Table7 a_Ref5 ON a_Ref3.Field4 = a_Ref5.Field4
		INNER JOIN (
			SELECT
				t2.Field3 as Field3,
				a_Ref5_1.Field8 as Field8,
				t2.Field6 as Field6
			FROM
				Table3 t2
					LEFT JOIN Table7 a_Ref5_1 ON t2.Field4 = a_Ref5_1.Field4
		) t3 ON t1.Field3_1 = t3.Field3 AND a_Ref5.Field8 = t3.Field8
		INNER JOIN Table2 t4 ON t3.Field6 = t4.Field6
WHERE
	t1.Id IS NOT NULL

