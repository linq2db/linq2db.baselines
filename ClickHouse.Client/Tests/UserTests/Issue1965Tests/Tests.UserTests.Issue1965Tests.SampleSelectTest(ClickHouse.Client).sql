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
	a_PersonData.Id,
	a_PersonData.Name,
	a_PersonData.Age
FROM
	Chipcard ka
		LEFT JOIN Issue1965Person a_PersonData ON a_PersonData.Id = ka.PersonId
WHERE
	a_PersonData.Id IS NOT NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Chipcard

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue1965Person

