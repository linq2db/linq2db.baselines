BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Books

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Books
(
	Id       Int           NOT NULL,
	Title    NVarChar(255) NOT NULL,
	AuthorId Int           NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Authors

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Authors
(
	Id   Int           NOT NULL,
	Name NVarChar(255) NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

WITH BooksCte (AuthorId, Title)
AS
(
	SELECT
		t1.AuthorId,
		t1.Title
	FROM
		Books t1
)
SELECT
	b.Title
FROM
	BooksCte b
		INNER JOIN Authors a_Author ON b.AuthorId = a_Author.Id
WHERE
	a_Author.Name = 'Steven'

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Authors

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Books

