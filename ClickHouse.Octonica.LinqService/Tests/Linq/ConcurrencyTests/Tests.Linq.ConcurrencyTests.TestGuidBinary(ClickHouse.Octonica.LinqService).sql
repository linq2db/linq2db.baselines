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
	Stamp = '\x21\x8D\xC4\x8C\xF2\x13\xC4\x4C\xA6\xDB\xB0\x87\xC0\x0A\x4A\xA4',
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
	Stamp = '\x01\x06\x82\x31\xF8\xF7\x97\x45\x91\x41\x7A\xD0\x36\xAB\x25\x0F',
	Value = 'value 2'
WHERE
	Id = 1 AND Stamp = '\x21\x8D\xC4\x8C\xF2\x13\xC4\x4C\xA6\xDB\xB0\x87\xC0\x0A\x4A\xA4'

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
	Stamp = '\x35\x06\xE2\x10\x3E\xA2\xD0\x42\xA0\x3C\x0F\x4B\xE8\xAB\x09\x24',
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
	Id = 1 AND Stamp = '\x01\x06\x82\x31\xF8\xF7\x97\x45\x91\x41\x7A\xD0\x36\xAB\x25\x0F'

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

