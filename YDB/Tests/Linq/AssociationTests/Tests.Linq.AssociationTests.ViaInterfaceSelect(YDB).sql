-- YDB Ydb

SELECT
	m_1.Id as Id,
	d.Id as Id_1,
	d.MainEntityId as MainEntityId
FROM
	MainEntity m_1
		INNER JOIN SubEntity d ON m_1.Id = d.MainEntityId

-- YDB Ydb

SELECT
	x.Id as Id
FROM
	MainEntity x

