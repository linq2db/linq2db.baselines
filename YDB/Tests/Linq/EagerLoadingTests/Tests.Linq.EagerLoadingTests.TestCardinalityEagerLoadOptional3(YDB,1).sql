-- YDB Ydb
SELECT
	t2.Id as Id,
	t2.FK as FK,
	t1.Id_1 as Id_1,
	t1.FK_1 as FK_1,
	t1.Id as Id_2,
	t1.FK as FK_2
FROM
	EntityA t2
		LEFT JOIN (
			SELECT
				a_ObjectCRequired.Id as Id,
				a_ObjectCRequired.FK as FK,
				a_ObjectBOptional.Id as Id_1,
				a_ObjectBOptional.FK as FK_1
			FROM
				EntityB a_ObjectBOptional
					LEFT JOIN EntityC a_ObjectCRequired ON a_ObjectBOptional.FK = a_ObjectCRequired.Id
		) t1 ON t2.FK = t1.Id_1

