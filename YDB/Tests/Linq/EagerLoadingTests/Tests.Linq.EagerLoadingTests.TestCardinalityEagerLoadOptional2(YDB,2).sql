-- YDB Ydb

SELECT
	m_1.Id as Id,
	d.Id as Id_1,
	d.FK as FK,
	d.FKD as FKD,
	a_ObjectD.Id as Id_2,
	a_ObjectD.FK as FK_1
FROM
	EntityMA m_1
		INNER JOIN EntityMB d ON m_1.Id = d.FK
		LEFT JOIN EntityMD a_ObjectD ON d.FKD = a_ObjectD.Id

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.FK as FK,
	t1.Id as Id_1
FROM
	EntityMA t1

