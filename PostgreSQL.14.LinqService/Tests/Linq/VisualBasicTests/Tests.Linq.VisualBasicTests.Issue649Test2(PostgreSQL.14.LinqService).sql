BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS activity649

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS activity649
(
	activityid SERIAL     NOT NULL,
	personid   Int        NOT NULL,
	added      TimeStamp  NOT NULL,

	CONSTRAINT "PK_activity649" PRIMARY KEY (activityid)
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS person649

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS person649
(
	personid   SERIAL  NOT NULL,
	personname text    NOT NULL,

	CONSTRAINT "PK_person649" PRIMARY KEY (personid)
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @added Timestamp -- DateTime2
SET     @added = '2017-01-01'::date

SELECT
	"a_Person".personid,
	"a_Person".personname,
	Max(p.added)
FROM
	activity649 p
		INNER JOIN person649 "a_Person" ON p.personid = "a_Person".personid
WHERE
	p.added >= :added
GROUP BY
	"a_Person".personid,
	"a_Person".personname

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS person649

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS activity649

