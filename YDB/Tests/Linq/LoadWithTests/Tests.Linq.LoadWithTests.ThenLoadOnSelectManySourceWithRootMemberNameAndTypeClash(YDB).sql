-- YDB Ydb
SELECT
	m_1.ProductId as ProductId,
	m_1.Id as Id,
	m_1.Id_1 as Id_1,
	d_2.Id as Id_2,
	d_2.SystemId as SystemId,
	d_2.ProductId as ProductId_1
FROM
	(
		SELECT DISTINCT
			d_1.ProductId as ProductId,
			t2.Id as Id,
			t2.Id_1 as Id_1
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
							ClashOrg o
								CROSS JOIN ClashOrgSystem a
								INNER JOIN ClashSystem s ON a.SystemId = s.Id
						WHERE
							o.Id = 5 AND a.OrganisationId = o.Id
					) t1
						INNER JOIN ClashStage d ON t1.Id = d.SystemId
						LEFT JOIN ClashProduct a_Product ON d.ProductId = a_Product.Id
			) t2
				INNER JOIN ClashProductOrg d_1 ON t2.Id = d_1.ProductId
	) m_1
		INNER JOIN ClashStage d_2 ON m_1.ProductId = d_2.ProductId

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
					ClashOrg o
						CROSS JOIN ClashOrgSystem a
						INNER JOIN ClashSystem s ON a.SystemId = s.Id
				WHERE
					o.Id = 5 AND a.OrganisationId = o.Id
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
			ClashOrg o
				CROSS JOIN ClashOrgSystem a
				INNER JOIN ClashSystem s ON a.SystemId = s.Id
		WHERE
			o.Id = 5 AND a.OrganisationId = o.Id
	) m_1
		INNER JOIN ClashStage d ON m_1.Id = d.SystemId
		LEFT JOIN ClashProduct a_Product ON d.ProductId = a_Product.Id

-- YDB Ydb
SELECT
	s.Id as Id
FROM
	ClashOrg o
		CROSS JOIN ClashOrgSystem a
		INNER JOIN ClashSystem s ON a.SystemId = s.Id
WHERE
	o.Id = 5 AND a.OrganisationId = o.Id

