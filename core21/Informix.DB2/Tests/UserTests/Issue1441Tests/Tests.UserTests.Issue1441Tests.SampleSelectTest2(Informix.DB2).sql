BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Authors
(
	Id   Int           NOT NULL,
	Name NVarChar(100) NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Books
(
	Id       Int           NOT NULL,
	AuthorId Int           NOT NULL,
	Title    NVarChar(100) NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Books

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Authors

