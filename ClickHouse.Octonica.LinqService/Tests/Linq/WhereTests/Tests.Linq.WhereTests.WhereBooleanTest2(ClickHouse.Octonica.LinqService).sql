BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS WhereCases

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS WhereCases
(
	Id                Int32,
	BoolValue         Bool,
	NullableBoolValue Nullable(Bool),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(
	1,
	true,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(
	2,
	true,
	true
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(
	3,
	true,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(
	4,
	true,
	true
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(
	5,
	true,
	true
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(
	11,
	false,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(
	12,
	false,
	false
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(
	13,
	false,
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(
	14,
	false,
	false
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(
	15,
	false,
	false
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.BoolValue,
	t1.NullableBoolValue
FROM
	WhereCases t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = false AND t.Id > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = false AND t.Id > 0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = true AND t.Id > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = true AND t.Id > 0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = true AND t.Id > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = true AND t.Id > 0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = false AND t.Id > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = false AND t.Id > 0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = false AND t.Id > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = false AND t.Id > 0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	(t.NullableBoolValue = false OR t.NullableBoolValue IS NULL) AND
	t.Id > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT ((t.NullableBoolValue = false OR t.NullableBoolValue IS NULL) AND t.Id > 0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue = true AND t.Id > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue = true AND t.NullableBoolValue IS NOT NULL AND t.Id > 0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue = true AND t.Id > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue = true AND t.NullableBoolValue IS NOT NULL AND t.Id > 0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue IS NULL AND t.Id > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue IS NULL AND t.Id > 0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue IS NOT NULL AND t.Id > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue IS NOT NULL AND t.Id > 0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue IS NOT NULL AND t.Id > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue IS NOT NULL AND t.Id > 0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue IS NULL AND t.Id > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue IS NULL AND t.Id > 0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = false AND (t.NullableBoolValue = false OR t.NullableBoolValue IS NULL) AND
	t.Id > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = false AND (t.NullableBoolValue = false OR t.NullableBoolValue IS NULL) AND t.Id > 0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = false AND (t.NullableBoolValue = false OR t.NullableBoolValue IS NULL)) AND
	t.Id > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT (t.BoolValue = false AND (t.NullableBoolValue = false OR t.NullableBoolValue IS NULL)) AND t.Id > 0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = false AND t.NullableBoolValue = false AND
	t.Id > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = false AND t.NullableBoolValue = false AND t.NullableBoolValue IS NOT NULL AND t.Id > 0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = false AND t.NullableBoolValue = false AND t.NullableBoolValue IS NOT NULL) AND
	t.Id > 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT (t.BoolValue = false AND t.NullableBoolValue = false AND t.NullableBoolValue IS NOT NULL) AND t.Id > 0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS WhereCases

