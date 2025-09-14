BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1_1.Id,
	t1_1.Field6
FROM
	Table2 t1_1
		LEFT JOIN Table3 a_Ref3 ON t1_1.Field6 = a_Ref3.Field6
		LEFT JOIN Table1 a_Ref4 ON a_Ref3.Field3 = a_Ref4.Field3
		LEFT JOIN Table1 a_Ref1 ON a_Ref4.Field5 = a_Ref1.Field3
		LEFT JOIN Table7 a_Ref5 ON a_Ref3.Field4 = a_Ref5.Field4
		INNER JOIN (
			SELECT
				t2.Field3 as Field3,
				a_Ref5_1.Id as Id
			FROM
				Table3 t2
					LEFT JOIN Table7 a_Ref5_1 ON t2.Field4 = a_Ref5_1.Field4
					INNER JOIN Table2 t4 ON t2.Field6 = t4.Field6
		) t1 ON a_Ref1.Id IS NOT NULL AND a_Ref1.Field3 = t1.Field3 AND a_Ref5.Id = t1.Id

