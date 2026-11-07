-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	m_1."ProductId",
	m_1."Id",
	m_1."Id_1",
	d_2."Id",
	d_2."SystemId",
	d_2."ProductId"
FROM
	(
		SELECT DISTINCT
			d_1."ProductId",
			t2."Id",
			t2."Id_1"
		FROM
			(
				SELECT DISTINCT
					a_Product."Id",
					t1."Id" as "Id_1"
				FROM
					(
						SELECT DISTINCT
							s."Id"
						FROM
							"ClashOrg" o
								CROSS JOIN "ClashOrgSystem" a
								INNER JOIN "ClashSystem" s ON a."SystemId" = s."Id"
						WHERE
							o."Id" = 5 AND a."OrganisationId" = o."Id"
					) t1
						INNER JOIN "ClashStage" d ON t1."Id" = d."SystemId"
						LEFT JOIN "ClashProduct" a_Product ON d."ProductId" = a_Product."Id"
			) t2
				INNER JOIN "ClashProductOrg" d_1 ON t2."Id" = d_1."ProductId"
	) m_1
		INNER JOIN "ClashStage" d_2 ON m_1."ProductId" = d_2."ProductId"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	m_1."Id",
	m_1."Id_1",
	d_1."Id",
	d_1."ProductId",
	d_1."OrganisationId"
FROM
	(
		SELECT DISTINCT
			a_Product."Id",
			t1."Id" as "Id_1"
		FROM
			(
				SELECT DISTINCT
					s."Id"
				FROM
					"ClashOrg" o
						CROSS JOIN "ClashOrgSystem" a
						INNER JOIN "ClashSystem" s ON a."SystemId" = s."Id"
				WHERE
					o."Id" = 5 AND a."OrganisationId" = o."Id"
			) t1
				INNER JOIN "ClashStage" d ON t1."Id" = d."SystemId"
				LEFT JOIN "ClashProduct" a_Product ON d."ProductId" = a_Product."Id"
	) m_1
		INNER JOIN "ClashProductOrg" d_1 ON m_1."Id" = d_1."ProductId"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	m_1."Id",
	d."Id",
	d."SystemId",
	d."ProductId",
	a_Product."Id"
FROM
	(
		SELECT DISTINCT
			s."Id"
		FROM
			"ClashOrg" o
				CROSS JOIN "ClashOrgSystem" a
				INNER JOIN "ClashSystem" s ON a."SystemId" = s."Id"
		WHERE
			o."Id" = 5 AND a."OrganisationId" = o."Id"
	) m_1
		INNER JOIN "ClashStage" d ON m_1."Id" = d."SystemId"
		LEFT JOIN "ClashProduct" a_Product ON d."ProductId" = a_Product."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	s."Id"
FROM
	"ClashOrg" o
		CROSS JOIN "ClashOrgSystem" a
		INNER JOIN "ClashSystem" s ON a."SystemId" = s."Id"
WHERE
	o."Id" = 5 AND a."OrganisationId" = o."Id"

