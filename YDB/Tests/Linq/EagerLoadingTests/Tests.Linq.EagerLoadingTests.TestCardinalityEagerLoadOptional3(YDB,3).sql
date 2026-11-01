-- YDB Ydb
SELECT
	m_1.Id as Id,
	m_1.Id as Id_1,
	d.Id as Id_2,
	d.FK as FK
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			EntityA t2
				LEFT JOIN (
					SELECT
						a_ObjectBOptional.Id as Id
					FROM
						EntityB a_ObjectBOptional
				) t1 ON t2.FK = t1.Id
	) m_1
		INNER JOIN EntityD d ON m_1.Id = d.FK

-- YDB Ydb
SELECT
	t2.Id as Id,
	t2.FK as FK,
	t1.Id_1 as Id_1,
	t1.FK_1 as FK_1,
	t1.Id as Id_2,
	t1.FK as FK_2,
	t1.Id_1 as Id_3
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

