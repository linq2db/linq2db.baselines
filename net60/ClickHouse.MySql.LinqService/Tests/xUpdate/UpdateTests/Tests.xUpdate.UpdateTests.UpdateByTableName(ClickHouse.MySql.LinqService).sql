﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS xxPerson

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE xxPerson
(
	FirstName  String,
	PersonID   Int32,
	LastName   String,
	MiddleName Nullable(String),
	Gender     FixedString(1),

	PRIMARY KEY (PersonID)
)
ENGINE = MergeTree()
ORDER BY PersonID

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO xxPerson
(
	FirstName,
	PersonID,
	LastName,
	MiddleName,
	Gender
)
VALUES
(
	'Steven',
	toInt32(0),
	'King',
	NULL,
	'M'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	xxPerson t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	xxPerson t1
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	xxPerson
UPDATE
	FirstName = 'Steven',
	LastName = 'King',
	MiddleName = 'None',
	Gender = 'M'
WHERE
	PersonID = toInt32(0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	xxPerson t1
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE xxPerson

