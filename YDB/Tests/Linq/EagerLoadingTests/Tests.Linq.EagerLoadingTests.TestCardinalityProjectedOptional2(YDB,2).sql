-- YDB Ydb

SELECT
	m_1.Id as Id,
	d.Id as Id_1,
	a_ObjectD.Id as Id_2,
	a_ObjectD.FK as FK
FROM
	EntityMA m_1
		INNER JOIN EntityMB d ON m_1.Id = d.FK
		LEFT JOIN EntityMD a_ObjectD ON d.FKD = a_ObjectD.Id

-- YDB Ydb

SELECT
	e.Id as Id
FROM
	EntityMA e

