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
	Stamp = '\x3F\xB6\xF5\x85\x19\x37\xF9\x4A\x9F\x51\x55\x8A\xEE\x8A\xAC\x89',
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
	Stamp = '\x8E\xF7\x42\xD9\x2A\x70\xE6\x40\x81\x4B\xB6\x0C\x74\x0D\x83\x3D',
	Value = 'value 2'
WHERE
	Id = 1 AND Stamp = '\x3F\xB6\xF5\x85\x19\x37\xF9\x4A\x9F\x51\x55\x8A\xEE\x8A\xAC\x89'

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
	Stamp = '\x57\x8D\xE0\x0A\xB0\xE3\x31\x4E\xBF\x79\x37\xCE\x97\xC2\x2B\xD9',
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
	Id = 1 AND Stamp = '\x8E\xF7\x42\xD9\x2A\x70\xE6\x40\x81\x4B\xB6\x0C\x74\x0D\x83\x3D'

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

