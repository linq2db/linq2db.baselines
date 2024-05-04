BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS House3001

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS House3001
(
	Levels Int32,
	Id     Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO House3001
(
	Levels,
	Id
)
VALUES
(2,1)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Person3001

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Person3001
(
	HouseId Int32,
	Id      Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Person3001
(
	HouseId,
	Id
)
VALUES
(1,1)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Pet3001

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Pet3001
(
	IsHouseMultiLevel Bool,
	Id                Int32,
	PersonId          Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Pet3001
(
	IsHouseMultiLevel,
	Id,
	PersonId
)
VALUES
(false,1,1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	CASE
		WHEN a_House.Levels > 1 THEN true
		ELSE false
	END
FROM
	Pet3001 x
		INNER JOIN Person3001 a_Person ON x.PersonId = a_Person.Id
		LEFT JOIN House3001 a_House ON a_Person.HouseId = a_House.Id
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Pet3001

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Person3001

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS House3001

