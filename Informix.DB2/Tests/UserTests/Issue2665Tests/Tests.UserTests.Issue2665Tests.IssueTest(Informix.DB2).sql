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
			p.Id
		FROM
			ProductTable p
				INNER JOIN ProductAttributeMapping pam_1 ON p.Id = pam_1.ProductId
		WHERE
			p.Id >= pam.ProductId
		GROUP BY
			p.Id
		HAVING
			Count(*) = 1
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

