﻿BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

DROP TABLE IF EXISTS xxPerson

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

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
-- ClickHouse.Client ClickHouse (asynchronously)

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
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	Count(*)
FROM
	xxPerson t1

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

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
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	xxPerson
DELETE WHERE
	PersonID = toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	Count(*)
FROM
	xxPerson t1

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

DROP TABLE xxPerson

