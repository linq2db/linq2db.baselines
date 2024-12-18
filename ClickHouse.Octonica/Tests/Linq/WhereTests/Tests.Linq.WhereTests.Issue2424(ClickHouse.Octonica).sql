BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Isue2424Table

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Isue2424Table
(
	Id       Int32,
	StrValue Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Isue2424Table
(
	Id,
	StrValue
)
VALUES
(1,'1'),
(3,'3'),
(5,'5')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '4' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '4' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '2' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '2' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue > '3' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue > '3' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue < '3' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue < '3' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue = '3' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue = '3' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '2' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '2' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '4' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '4' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue < '3' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue < '3' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue > '3' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue > '3' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '5' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue >= '5' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '1' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Id,
	i.StrValue
FROM
	Isue2424Table i
WHERE
	i.StrValue <= '1' AND i.StrValue IS NOT NULL
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Isue2424Table

