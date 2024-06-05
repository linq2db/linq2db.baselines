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
	Stamp = '\x6C\x15\x4D\xF3\xFF\xF4\xF7\x4C\xA9\xAA\xDE\x17\x8C\x64\xE3\xBF',
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
	Stamp = '\xA5\x52\x73\xB7\x66\x88\x5A\x40\x8B\xC2\xBF\x54\x6A\x4B\x78\x55',
	Value = 'value 2'
WHERE
	Id = 1 AND Stamp = '\x6C\x15\x4D\xF3\xFF\xF4\xF7\x4C\xA9\xAA\xDE\x17\x8C\x64\xE3\xBF'

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
	Stamp = '\x46\xAF\x78\x5E\x95\x17\x67\x46\xBE\x53\x39\xD6\xD6\xEC\xC9\x17',
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
	Id = 1 AND Stamp = '\xA5\x52\x73\xB7\x66\x88\x5A\x40\x8B\xC2\xBF\x54\x6A\x4B\x78\x55'

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

