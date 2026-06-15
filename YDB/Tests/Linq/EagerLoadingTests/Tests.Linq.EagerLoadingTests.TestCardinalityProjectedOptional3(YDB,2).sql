-- YDB Ydb

SELECT
	m_1.Id as Id,
	m_1.Id as Id_1,
	d.Id as Id_2,
	d.FK as FK
FROM
	(
		SELECT DISTINCT
			a_ObjectBOptional.Id as Id
		FROM
			EntityA e
				LEFT JOIN EntityB a_ObjectBOptional ON e.FK = a_ObjectBOptional.Id
	) m_1
		INNER JOIN EntityD d ON m_1.Id = d.FK

-- YDB Ydb

SELECT
	e.Id as Id,
	a_ObjectBOptional.Id as Id_1,
	a_ObjectBOptional.Id as Id_2
FROM
	EntityA e
		LEFT JOIN EntityB a_ObjectBOptional ON e.FK = a_ObjectBOptional.Id

