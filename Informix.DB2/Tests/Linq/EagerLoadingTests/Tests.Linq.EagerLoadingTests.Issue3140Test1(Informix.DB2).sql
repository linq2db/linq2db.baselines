BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3140Parent

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue3140Parent
(
	Id      Int NOT NULL,
	ChildId Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3140Child

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue3140Child
(
	Id   Int           NOT NULL,
	Name NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.Id,
	a_Child.Id,
	a_Child.Name
FROM
	Issue3140Parent p
		LEFT JOIN Issue3140Child a_Child ON p.ChildId = a_Child.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3140Child

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3140Parent

