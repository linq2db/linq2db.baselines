BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue1965Person

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue1965Person
(
	Id   Int32,
	Name Nullable(String),
	Age  Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Chipcard

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Chipcard
(
	PersonId      Int32,
	ValidationEnd DateTime64(7)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	ka.PersonId,
	ka.ValidationEnd,
	p.Id,
	p.Name,
	p.Age
FROM
	Chipcard ka
		LEFT JOIN Issue1965Person p ON p.Id = ka.PersonId
WHERE
	(p.Id IS NOT NULL OR p.Name IS NOT NULL OR p.Age IS NOT NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Chipcard

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue1965Person

