BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS xxPerson

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

DROP TABLE xxPerson

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS xxPerson

