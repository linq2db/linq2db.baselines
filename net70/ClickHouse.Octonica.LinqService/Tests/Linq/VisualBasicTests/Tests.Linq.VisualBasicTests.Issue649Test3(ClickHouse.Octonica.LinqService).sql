﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS activity649

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS person649

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS person649
(
	personid   Int32,
	personname String,

	PRIMARY KEY (personid)
)
ENGINE = MergeTree()
ORDER BY personid

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	a_Person.personid,
	a_Person.personname,
	maxOrNull(f.added)
FROM
	activity649 f
		INNER JOIN person649 a_Person ON f.personid = a_Person.personid
WHERE
	f.added >= toDateTime64('2017-01-01 00:00:00.0000000', 7)
GROUP BY
	a_Person.personid,
	a_Person.personname

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS person649

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS activity649

