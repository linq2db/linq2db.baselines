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
	t1.c1,
	t1.c2,
	Max(t1.added)
FROM
	(
		SELECT
			a_Person.personid as c1,
			a_Person.personname as c2,
			f.added
		FROM
			activity649 f
				INNER JOIN person649 a_Person ON f.personid = a_Person.personid
		WHERE
			f.added >= @added
	) t1
GROUP BY
	t1.c1,
	t1.c2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS person649

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS activity649

