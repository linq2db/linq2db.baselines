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
	Stamp = '\x9B\xC2\x2A\x73\x2B\xBE\x94\x44\x82\xB5\xF1\x24\x80\x79\x87\xCC',
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
	Stamp = '\x25\x0E\x5C\x6A\x37\x98\xC0\x44\x97\x79\x04\xFF\xC1\x8C\x69\xB4',
	Value = 'value 2'
WHERE
	Id = 1 AND Stamp = '\x9B\xC2\x2A\x73\x2B\xBE\x94\x44\x82\xB5\xF1\x24\x80\x79\x87\xCC'

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
	Stamp = '\x78\xC3\xFE\x78\xD2\x25\xE5\x46\x9C\x8B\xA6\x40\xE8\xA4\x5B\x86',
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
	Id = 1 AND Stamp = '\x25\x0E\x5C\x6A\x37\x98\xC0\x44\x97\x79\x04\xFF\xC1\x8C\x69\xB4'

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

