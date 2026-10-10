-- YDB Ydb
SELECT
	m_1.Id as Id,
	d_1.Id as Id_1,
	d_1.CompanyId as CompanyId,
	d_1.Name as Name,
	d_1.IsActive as IsActive
FROM
	Company m_1
		INNER JOIN (
			SELECT
				d.Id as Id,
				d.CompanyId as CompanyId,
				d.Name as Name,
				d.IsActive as IsActive,
				ROW_NUMBER() OVER (PARTITION BY d.CompanyId ORDER BY d.Id) as rn
			FROM
				Department d
		) d_1 ON d_1.CompanyId = m_1.Id
WHERE
	d_1.rn <= 2
ORDER BY
	m_1.Id,
	d_1.Id

-- YDB Ydb
SELECT
	c_1.Id as Id
FROM
	Company c_1
ORDER BY
	c_1.Id

