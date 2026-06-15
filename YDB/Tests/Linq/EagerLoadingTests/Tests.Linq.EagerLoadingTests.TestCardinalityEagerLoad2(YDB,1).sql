-- YDB Ydb

SELECT
	m_1.Id as Id,
	m_1.Id_1 as Id_1,
	d_1.Id as Id_2,
	d_1.FK as FK
FROM
	(
		SELECT DISTINCT
			d.Id as Id,
			t1.Id as Id_1
		FROM
			EntityMA t1
				INNER JOIN EntityMB d ON t1.Id = d.FK
	) m_1
		INNER JOIN EntityMC d_1 ON m_1.Id = d_1.FK

-- YDB Ydb

SELECT
	m_1.Id as Id,
	d.Id as Id_1,
	d.FK as FK,
	d.FKD as FKD,
	d.Id as Id_2
FROM
	EntityMA m_1
		INNER JOIN EntityMB d ON m_1.Id = d.FK

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.FK as FK,
	t1.Id as Id_1
FROM
	EntityMA t1

