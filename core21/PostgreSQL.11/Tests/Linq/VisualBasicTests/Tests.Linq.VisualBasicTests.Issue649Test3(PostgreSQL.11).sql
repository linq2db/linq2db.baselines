BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE activity649
(
	activityid SERIAL     NOT NULL,
	personid   Int        NOT NULL,
	added      TimeStamp  NOT NULL,

	CONSTRAINT "PK_activity649" PRIMARY KEY (activityid)
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE person649
(
	personid   SERIAL  NOT NULL,
	personname text    NOT NULL,

	CONSTRAINT "PK_person649" PRIMARY KEY (personid)
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @added Timestamp -- DateTime
SET     @added = '2017-01-01'::date

SELECT 
	"a_Person".personid, 
	"a_Person".personname, 
	Max(f.added)
FROM
	activity649 f
		INNER JOIN person649 "a_Person" ON f.personid = "a_Person".personid
WHERE
	f.added >= :added
GROUP BY
	"a_Person".personid,
	"a_Person".personname

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE person649

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE activity649

