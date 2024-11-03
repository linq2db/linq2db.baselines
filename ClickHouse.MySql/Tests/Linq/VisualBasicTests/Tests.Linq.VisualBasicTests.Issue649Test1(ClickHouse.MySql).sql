BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS activity649

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS activity649
(
	activityid Int32,
	personid   Int32,
	added      DateTime64(7),

	PRIMARY KEY (activityid)
)
ENGINE = MergeTree()
ORDER BY activityid

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS person649

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS person649
(
	personid   Int32,
	personname String,

	PRIMARY KEY (personid)
)
ENGINE = MergeTree()
ORDER BY personid

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	a_Person.personid,
	a_Person.personname,
	max(VBIt.added)
FROM
	activity649 VBIt
		INNER JOIN person649 a_Person ON VBIt.personid = a_Person.personid
WHERE
	VBIt.added >= makeDateTime(2017, 1, 1, 0, 0, 0)
GROUP BY
	a_Person.personid,
	a_Person.personname

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS person649

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS activity649

