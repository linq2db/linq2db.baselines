BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE ProductTable
(
	Id   Int           NOT NULL,
	Name NVarChar(255) NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE ProductAttributeTable
(
	Id   Int           NOT NULL,
	Name NVarChar(255) NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE ProductAttributeMapping
(
	ProductId          Int NOT NULL,
	ProductAttributeId Int NOT NULL,

	PRIMARY KEY (ProductId, ProductAttributeId)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE ProductAttributeMapping

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE ProductAttributeTable

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE ProductTable

