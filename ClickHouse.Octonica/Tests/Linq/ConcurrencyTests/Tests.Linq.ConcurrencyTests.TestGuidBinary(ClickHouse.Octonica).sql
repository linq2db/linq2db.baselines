BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ConcurrencyGuidBinary

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS ConcurrencyGuidBinary
(
	Id    Int32,
	Stamp Nullable(FixedString(16)),
	Value Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO ConcurrencyGuidBinary
(
	Id,
	Stamp,
	Value
)
VALUES
(
	1,
	'\x3D\x66\x7B\xBC\xDE\x0F\x27\x43\x8F\x92\x5D\x8C\xC3\xA1\x1D\x11',
	'initial'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyGuidBinary t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	ConcurrencyGuidBinary
UPDATE
	Stamp = '\x07\x8E\xA8\x9A\x6E\x48\x2B\x42\x8D\x20\x46\xE3\xDD\xD2\x0D\x3E',
	Value = 'value 1'
WHERE
	Id = 1 AND Stamp = '\x3D\x66\x7B\xBC\xDE\x0F\x27\x43\x8F\x92\x5D\x8C\xC3\xA1\x1D\x11'

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyGuidBinary t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	ConcurrencyGuidBinary
UPDATE
	Stamp = '\x18\xA5\x7F\xF7\xB9\xDA\x99\x49\xA7\x3F\x3F\x5F\x82\x59\xD3\xD4',
	Value = 'value 2'
WHERE
	Id = 1 AND Stamp = '\x07\x8E\xA8\x9A\x6E\x48\x2B\x42\x8D\x20\x46\xE3\xDD\xD2\x0D\x3E'

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyGuidBinary t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	ConcurrencyGuidBinary
UPDATE
	Stamp = '\x2D\x4E\x20\xA0\xB6\x8A\x72\x4C\x8F\xAC\x27\x99\xF5\x46\x47\xC8',
	Value = 'value 3'
WHERE
	Id = 1 AND Stamp = '\x0D\x60\x48\xA9\x21\xDE\x74\x4F\x8A\xC2\x95\x16\xB2\x87\x07\x6E'

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyGuidBinary t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	ConcurrencyGuidBinary
DELETE WHERE
	Id = 1 AND Stamp = '\xA5\x73\x39\xBD\x23\x43\xD8\x4D\x9F\x4F\xDF\x9F\x93\xE2\xA6\x27'

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyGuidBinary t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	ConcurrencyGuidBinary
DELETE WHERE
	Id = 1 AND Stamp = '\x18\xA5\x7F\xF7\xB9\xDA\x99\x49\xA7\x3F\x3F\x5F\x82\x59\xD3\xD4'

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Stamp,
	t1.Value
FROM
	ConcurrencyGuidBinary t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ConcurrencyGuidBinary

