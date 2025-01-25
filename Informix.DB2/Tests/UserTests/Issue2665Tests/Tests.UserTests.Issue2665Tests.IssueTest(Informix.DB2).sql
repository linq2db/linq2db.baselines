BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ProductTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS ProductTable
(
	Id   Int           NOT NULL,
	Name NVarChar(255) NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ProductAttributeTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS ProductAttributeTable
(
	Id   Int           NOT NULL,
	Name NVarChar(255) NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ProductAttributeMapping

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS ProductAttributeMapping
(
	ProductId          Int NOT NULL,
	ProductAttributeId Int NOT NULL,

	PRIMARY KEY (ProductId, ProductAttributeId)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	pa.Id
FROM
	ProductAttributeMapping pam
		INNER JOIN ProductAttributeTable pa ON pam.ProductAttributeId = pa.Id
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					groupedProduct.Id
				FROM
					ProductTable groupedProduct
						INNER JOIN ProductAttributeMapping pam_1 ON groupedProduct.Id = pam_1.ProductId
				GROUP BY
					groupedProduct.Id
				HAVING
					COUNT(*) = 1
			) p
		WHERE
			p.Id >= pam.ProductId
	)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ProductAttributeMapping

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ProductAttributeTable

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ProductTable

