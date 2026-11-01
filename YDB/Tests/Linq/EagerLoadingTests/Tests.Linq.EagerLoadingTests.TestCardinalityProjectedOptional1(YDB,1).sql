-- YDB Ydb
SELECT
	e.Id as Id,
	t1.Id as Id_1,
	t1.Id as Id_2,
	t1.Id_1 as Id_3,
	t1.FK as FK
FROM
	EntityA e
		LEFT JOIN (
			SELECT
				a_ObjectBOptional.Id as Id,
				a_ObjectC.Id as Id_1,
				a_ObjectC.FK as FK
			FROM
				EntityB a_ObjectBOptional
					LEFT JOIN EntityC a_ObjectC ON a_ObjectBOptional.FK = a_ObjectC.Id
		) t1 ON e.FK = t1.Id

