﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WhereCases

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(toInt32(1),true,NULL),
(toInt32(2),true,true),
(toInt32(3),true,NULL),
(toInt32(4),true,true),
(toInt32(5),true,true),
(toInt32(11),false,NULL),
(toInt32(12),false,false),
(toInt32(13),false,NULL),
(toInt32(14),false,false),
(toInt32(15),false,false)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.BoolValue,
	t1.NullableBoolValue
FROM
	WhereCases t1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = false AND t.Id > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = false AND t.Id > toInt32(0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = true AND t.Id > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = true AND t.Id > toInt32(0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = true AND t.Id > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = true AND t.Id > toInt32(0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = false AND t.Id > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = false AND t.Id > toInt32(0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = false AND t.Id > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = false AND t.Id > toInt32(0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	(t.NullableBoolValue = false OR t.NullableBoolValue IS NULL) AND
	t.Id > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT ((t.NullableBoolValue = false OR t.NullableBoolValue IS NULL) AND t.Id > toInt32(0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	(t.NullableBoolValue = true AND t.NullableBoolValue IS NOT NULL) AND
	t.Id > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT ((t.NullableBoolValue = true AND t.NullableBoolValue IS NOT NULL) AND t.Id > toInt32(0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue = true AND t.Id > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue = true AND t.NullableBoolValue IS NOT NULL AND t.Id > toInt32(0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue IS NULL AND t.Id > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue IS NULL AND t.Id > toInt32(0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue IS NOT NULL AND t.Id > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue IS NOT NULL AND t.Id > toInt32(0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue IS NOT NULL AND t.Id > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue IS NOT NULL AND t.Id > toInt32(0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue IS NULL AND t.Id > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue IS NULL AND t.Id > toInt32(0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = false AND (t.NullableBoolValue = false OR t.NullableBoolValue IS NULL) AND
	t.Id > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = false AND (t.NullableBoolValue = false OR t.NullableBoolValue IS NULL) AND t.Id > toInt32(0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = false AND (t.NullableBoolValue = false OR t.NullableBoolValue IS NULL)) AND
	t.Id > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT (t.BoolValue = false AND (t.NullableBoolValue = false OR t.NullableBoolValue IS NULL)) AND t.Id > toInt32(0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = false AND t.NullableBoolValue = false AND
	t.Id > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = false AND t.NullableBoolValue = false AND t.NullableBoolValue IS NOT NULL AND t.Id > toInt32(0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = false AND t.NullableBoolValue = false AND t.NullableBoolValue IS NOT NULL) AND
	t.Id > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT (t.BoolValue = false AND t.NullableBoolValue = false AND t.NullableBoolValue IS NOT NULL) AND t.Id > toInt32(0))

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WhereCases

