-- YDB Ydb
SELECT
	m_1.Id as Id,
	m_1.Id_1 as Id_1,
	d_1.Id as Id_2,
	d_1.ProductId as ProductId,
	d_1.OrganisationId as OrganisationId
FROM
	(
		SELECT DISTINCT
			a_Product.Id as Id,
			t1.Id as Id_1
		FROM
			(
				SELECT DISTINCT
					s.Id as Id
				FROM
					ClashOrg x
						INNER JOIN ClashOrgSystem a ON a.OrganisationId = x.Id
						INNER JOIN ClashSystem s ON a.SystemId = s.Id
				WHERE
					x.Id = 5
			) t1
				INNER JOIN ClashStage d ON t1.Id = d.SystemId
				LEFT JOIN ClashProduct a_Product ON d.ProductId = a_Product.Id
	) m_1
		INNER JOIN ClashProductOrg d_1 ON m_1.Id = d_1.ProductId

-- YDB Ydb
SELECT
	m_1.Id as Id,
	d.Id as Id_1,
	d.SystemId as SystemId,
	d.ProductId as ProductId,
	a_Product.Id as Id_2
FROM
	(
		SELECT DISTINCT
			s.Id as Id
		FROM
			ClashOrg x
				INNER JOIN ClashOrgSystem a ON a.OrganisationId = x.Id
				INNER JOIN ClashSystem s ON a.SystemId = s.Id
		WHERE
			x.Id = 5
	) m_1
		INNER JOIN ClashStage d ON m_1.Id = d.SystemId
		LEFT JOIN ClashProduct a_Product ON d.ProductId = a_Product.Id

-- YDB Ydb
SELECT
	s.Id as Id
FROM
	ClashOrg x
		INNER JOIN ClashOrgSystem a ON a.OrganisationId = x.Id
		INNER JOIN ClashSystem s ON a.SystemId = s.Id
WHERE
	x.Id = 5

