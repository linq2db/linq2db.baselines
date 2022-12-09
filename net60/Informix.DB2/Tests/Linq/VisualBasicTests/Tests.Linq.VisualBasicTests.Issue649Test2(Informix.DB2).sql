BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS activity649

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS activity649
(
	activityid SERIAL                     NOT NULL,
	personid   Int                        NOT NULL,
	added      datetime year to fraction  NOT NULL,

	PRIMARY KEY (activityid)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS person649

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS person649
(
	personid   SERIAL         NOT NULL,
	personname NVarChar(255)  NOT NULL,

	PRIMARY KEY (personid)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @added Timestamp(16) -- DateTime
SET     @added = TO_DATE('2017-01-01', '%Y-%m-%d')

SELECT
	VBIt.c1,
	VBIt.c2,
	Max(VBIt.added)
FROM
	(
		SELECT
			a_Person.personid as c1,
			a_Person.personname as c2,
			p.added
		FROM
			activity649 p
				INNER JOIN person649 a_Person ON p.personid = a_Person.personid
		WHERE
			p.added >= @added
	) VBIt
GROUP BY
	VBIt.c1,
	VBIt.c2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS person649

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS activity649

