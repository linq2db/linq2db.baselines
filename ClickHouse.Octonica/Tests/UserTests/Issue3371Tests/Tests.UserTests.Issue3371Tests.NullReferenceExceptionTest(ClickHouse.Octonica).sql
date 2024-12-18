BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS PayRate

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS PayRate
(
	Id   Int32,
	Name Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO PayRate
(
	Id,
	Name
)
VALUES
(1,'Name1'),
(2,'Name2'),
(3,'test')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Employees

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Employees
(
	Id        Int32,
	PayRateId Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Employees
(
	Id,
	PayRateId
)
VALUES
(1,1),
(2,NULL),
(3,3)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	item_1.Id,
	a_PayRate.Id,
	a_PayRate.Name
FROM
	Employees item_1
		LEFT JOIN PayRate a_PayRate ON item_1.PayRateId = a_PayRate.Id AND item_1.PayRateId IS NOT NULL
WHERE
	a_PayRate.Name = 'test' AND a_PayRate.Name IS NOT NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	item_1.Id,
	item_1.PayRateId,
	a_PayRate.Name
FROM
	Employees item_1
		LEFT JOIN PayRate a_PayRate ON item_1.PayRateId = a_PayRate.Id AND item_1.PayRateId IS NOT NULL
WHERE
	a_PayRate.Name = 'test' AND a_PayRate.Name IS NOT NULL AND
	item_1.PayRateId IS NOT NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Employees

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS PayRate

