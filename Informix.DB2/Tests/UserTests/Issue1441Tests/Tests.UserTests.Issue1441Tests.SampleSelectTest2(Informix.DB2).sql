BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Authors

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Authors
(
	Id   Int           NOT NULL,
	Name NVarChar(100) NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Books

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Books
(
	Id       Int           NOT NULL,
	AuthorId Int           NOT NULL,
	Title    NVarChar(100) NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	author.Id,
	author.Name
FROM
	Authors author
		INNER JOIN Books book ON book.AuthorId = author.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Books

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Authors

