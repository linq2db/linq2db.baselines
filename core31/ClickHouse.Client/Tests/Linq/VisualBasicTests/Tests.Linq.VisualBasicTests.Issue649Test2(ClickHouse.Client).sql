BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS activity649

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS person649

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS person649
(
	personid   Int32,
	personname String,

	 PRIMARY KEY (personid)
)
ENGINE = MergeTree()
ORDER BY personid

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	a_Person.personid,
	a_Person.personname,
	maxOrNull(p.added)
FROM
	activity649 p
		INNER JOIN person649 a_Person ON p.personid = a_Person.personid
WHERE
	p.added >= toDateTime64('2017-01-01 00:00:00.0000000', 7)
GROUP BY
	a_Person.personid,
	a_Person.personname

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS person649

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS activity649

