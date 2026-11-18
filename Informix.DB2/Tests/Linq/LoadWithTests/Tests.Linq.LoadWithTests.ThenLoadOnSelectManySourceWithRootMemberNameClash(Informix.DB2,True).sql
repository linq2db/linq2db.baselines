-- Informix.DB2 Informix
SELECT
	m_1.Id,
	m_1.Id_1,
	d_1.Id,
	d_1.ProductId,
	d_1.OrganisationId
FROM
	(
		SELECT DISTINCT
			a_Product.Id,
			t1.Id as Id_1
		FROM
			(
				SELECT DISTINCT
					s.Id
				FROM
					(
						SELECT
							a.SystemId,
							o.Id,
							a.OrganisationId
						FROM
							ClashOrg o,
							ClashOrgSystem a
					) sub
						INNER JOIN ClashSystem s ON sub.SystemId = s.Id
				WHERE
					sub.Id = 5 AND sub.OrganisationId = sub.Id
			) t1
				INNER JOIN ClashStage d ON t1.Id = d.SystemId
				LEFT JOIN ClashProduct a_Product ON d.ProductId = a_Product.Id
	) m_1
		INNER JOIN ClashProductOrg d_1 ON m_1.Id = d_1.ProductId
WHERE
	d_1.OrganisationId IN (1, 2)

-- Informix.DB2 Informix
SELECT
	m_1.Id,
	d.Id,
	d.SystemId,
	d.ProductId,
	a_Product.Id
FROM
	(
		SELECT DISTINCT
			s.Id
		FROM
			(
				SELECT
					a.SystemId,
					o.Id,
					a.OrganisationId
				FROM
					ClashOrg o,
					ClashOrgSystem a
			) sub
				INNER JOIN ClashSystem s ON sub.SystemId = s.Id
		WHERE
			sub.Id = 5 AND sub.OrganisationId = sub.Id
	) m_1
		INNER JOIN ClashStage d ON m_1.Id = d.SystemId
		LEFT JOIN ClashProduct a_Product ON d.ProductId = a_Product.Id

-- Informix.DB2 Informix
SELECT
	s.Id
FROM
	(
		SELECT
			a.SystemId,
			o.Id,
			a.OrganisationId
		FROM
			ClashOrg o,
			ClashOrgSystem a
	) sub
		INNER JOIN ClashSystem s ON sub.SystemId = s.Id
WHERE
	sub.Id = 5 AND sub.OrganisationId = sub.Id

