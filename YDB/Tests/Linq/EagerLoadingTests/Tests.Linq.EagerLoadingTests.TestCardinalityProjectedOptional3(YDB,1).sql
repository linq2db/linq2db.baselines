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
				a_ObjectCRequired.Id as Id_1,
				a_ObjectCRequired.FK as FK
			FROM
				EntityB a_ObjectBOptional
					LEFT JOIN EntityC a_ObjectCRequired ON a_ObjectBOptional.FK = a_ObjectCRequired.Id
		) t1 ON e.FK = t1.Id

