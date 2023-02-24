﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Isue2424Table

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Isue2424Table
(
	Id       Int32,
	StrValue Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Isue2424Table
(
	Id,
	StrValue
)
VALUES
(toInt32(1),'1'),
(toInt32(3),'3'),
(toInt32(5),'5')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '4'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '4'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '2'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '2'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue > '3'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue > '3'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue < '3'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue < '3'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue = '3'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue = '3'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '2'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '2'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '4'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '4'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue < '3'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue < '3'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue > '3'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue > '3'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '5'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '5'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '1'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '1'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Isue2424Table

