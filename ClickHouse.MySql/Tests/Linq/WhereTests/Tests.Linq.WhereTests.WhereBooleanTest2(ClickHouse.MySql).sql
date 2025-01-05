BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS WhereCases

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(1,true,NULL),
(2,true,true),
(3,true,NULL),
(4,true,true),
(5,true,true),
(11,false,NULL),
(12,false,false),
(13,false,NULL),
(14,false,false),
(15,false,false)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.BoolValue,
	t1.NullableBoolValue
FROM
	WhereCases t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT t.BoolValue AND t.Id > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT t.BoolValue AND t.Id > 0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = true AND t.Id > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = true AND t.Id > 0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = true AND t.Id > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = true AND t.Id > 0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = false AND t.Id > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = false AND t.Id > 0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = false AND t.Id > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = false AND t.Id > 0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT ((t.NullableBoolValue = false OR t.NullableBoolValue IS NULL) AND t.Id > 0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue = true AND t.Id > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue = true AND t.NullableBoolValue IS NOT NULL AND t.Id > 0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue = true AND t.Id > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue = true AND t.NullableBoolValue IS NOT NULL AND t.Id > 0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue IS NULL AND t.Id > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue IS NULL AND t.Id > 0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue IS NOT NULL AND t.Id > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue IS NOT NULL AND t.Id > 0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue IS NOT NULL AND t.Id > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue IS NOT NULL AND t.Id > 0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue IS NULL AND t.Id > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue IS NULL AND t.Id > 0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT t.BoolValue AND (t.NullableBoolValue = false OR t.NullableBoolValue IS NULL) AND
	t.Id > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT t.BoolValue AND (t.NullableBoolValue = false OR t.NullableBoolValue IS NULL) AND t.Id > 0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT t.BoolValue AND (t.NullableBoolValue = false OR t.NullableBoolValue IS NULL)) AND
	t.Id > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT (NOT t.BoolValue AND (t.NullableBoolValue = false OR t.NullableBoolValue IS NULL)) AND t.Id > 0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT t.BoolValue AND t.NullableBoolValue = false AND
	t.Id > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT t.BoolValue AND t.NullableBoolValue = false AND t.NullableBoolValue IS NOT NULL AND t.Id > 0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT t.BoolValue AND t.NullableBoolValue = false AND t.NullableBoolValue IS NOT NULL) AND
	t.Id > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT (NOT t.BoolValue AND t.NullableBoolValue = false AND t.NullableBoolValue IS NOT NULL) AND t.Id > 0)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS WhereCases

