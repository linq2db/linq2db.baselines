﻿BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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
-- ClickHouse.MySql ClickHouse (asynchronously)

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
-- ClickHouse.MySql ClickHouse (asynchronously)

DROP TABLE xxPerson

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

DROP TABLE IF EXISTS xxPerson

