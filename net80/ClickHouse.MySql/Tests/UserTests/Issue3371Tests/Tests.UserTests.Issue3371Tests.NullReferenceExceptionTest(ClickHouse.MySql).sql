﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS PayRate

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS PayRate
(
	Id   Int32,
	Name Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO PayRate
(
	Id,
	Name
)
VALUES
(toInt32(1),'Name1'),
(toInt32(2),'Name2'),
(toInt32(3),'test')

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Employees

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Employees
(
	Id        Int32,
	PayRateId Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Employees
(
	Id,
	PayRateId
)
VALUES
(toInt32(1),toInt32(1)),
(toInt32(2),NULL),
(toInt32(3),toInt32(3))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	item_1.Id,
	a_PayRate.Id,
	a_PayRate.Name
FROM
	Employees item_1
		LEFT JOIN PayRate a_PayRate ON item_1.PayRateId = a_PayRate.Id
WHERE
	a_PayRate.Name = 'test'

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	item_1.Id,
	item_1.PayRateId,
	a_PayRate.Name
FROM
	Employees item_1
		LEFT JOIN PayRate a_PayRate ON item_1.PayRateId = a_PayRate.Id
WHERE
	a_PayRate.Name = 'test'

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Employees

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS PayRate

