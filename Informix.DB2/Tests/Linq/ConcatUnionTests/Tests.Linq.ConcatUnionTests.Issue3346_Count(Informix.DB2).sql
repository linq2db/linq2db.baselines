BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ComplexPerson

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS ComplexPerson
(
	Id        Int           NOT NULL,
	FirstName NVarChar(255)     NULL,
	LastName  NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	(
		SELECT
			x.Id,
			x.FirstName,
			x.LastName
		FROM
			ComplexPerson x
		WHERE
			x.Id < 10
		UNION
		SELECT
			x_1.Id,
			x_1.FirstName,
			x_1.LastName
		FROM
			ComplexPerson x_1
		WHERE
			x_1.Id < 20
	) t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ComplexPerson

