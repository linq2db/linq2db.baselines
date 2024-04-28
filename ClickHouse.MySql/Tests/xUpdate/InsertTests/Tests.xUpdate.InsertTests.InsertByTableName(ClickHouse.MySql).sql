BeforeExecute
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
	0,
	'King',
	NULL,
	'M'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE xxPerson

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS xxPerson

