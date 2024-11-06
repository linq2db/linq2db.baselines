BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue2933Car

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue2933Car
(
	PersonId Nullable(Int32),
	Id       Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue2933Car
(
	PersonId,
	Id
)
VALUES
(
	1,
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue2933Car
(
	PersonId,
	Id
)
VALUES
(
	NULL,
	2
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue2933Person

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue2933Person
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue2933Person
(
	Id
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue2933Pet

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue2933Pet
(
	Name     String,
	Id       Int32,
	PersonId Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue2933Pet
(
	Name,
	Id,
	PersonId
)
VALUES
(
	'Snuffles',
	1,
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue2933Pet
(
	Name,
	Id,
	PersonId
)
VALUES
(
	'Buddy',
	2,
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	t1.Name
FROM
	Issue2933Car x
		LEFT JOIN Issue2933Person a_Person ON x.PersonId = a_Person.Id
		LEFT JOIN (
			SELECT
				a_PetIds.Name as Name,
				ROW_NUMBER() OVER (PARTITION BY a_PetIds.PersonId ORDER BY a_PetIds.PersonId) as rn,
				a_PetIds.PersonId as PersonId
			FROM
				Issue2933Pet a_PetIds
		) t1 ON a_Person.Id = t1.PersonId AND t1.rn <= 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue2933Pet

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue2933Person

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue2933Car

