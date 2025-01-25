BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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
-- ClickHouse.Octonica ClickHouse (asynchronously)

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
-- ClickHouse.Octonica ClickHouse (asynchronously)

DROP TABLE xxPerson

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

DROP TABLE IF EXISTS xxPerson

