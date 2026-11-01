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
			EntityA e
				LEFT JOIN (
					SELECT
						a_ObjectBOptional.Id as Id
					FROM
						EntityB a_ObjectBOptional
				) t1 ON e.FK = t1.Id
	) m_1
		INNER JOIN EntityD d ON m_1.Id = d.FK

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

