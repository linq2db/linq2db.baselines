-- YDB Ydb

SELECT
	m_1.Id as Id,
	d.Id as Id_1,
	d.FK as FK
FROM
	(
		SELECT DISTINCT
			a_ObjectB.Id as Id
		FROM
			EntityA e
				INNER JOIN EntityB a_ObjectB ON e.FK = a_ObjectB.Id
	) m_1
		INNER JOIN EntityD d ON m_1.Id = d.FK

-- YDB Ydb

SELECT
	e.Id as Id,
	a_ObjectB.Id as Id_1,
	a_ObjectC.Id as Id_2,
	a_ObjectC.FK as FK
FROM
	EntityA e
		INNER JOIN EntityB a_ObjectB ON e.FK = a_ObjectB.Id
		LEFT JOIN EntityC a_ObjectC ON a_ObjectB.FK = a_ObjectC.Id

