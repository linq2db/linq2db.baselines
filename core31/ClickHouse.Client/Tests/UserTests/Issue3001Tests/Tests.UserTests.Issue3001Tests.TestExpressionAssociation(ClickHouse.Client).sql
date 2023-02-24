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
(toInt32(2),toInt32(1))

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
(toInt32(1),toInt32(1))

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
(false,toInt32(1),toInt32(1))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	CASE
		WHEN a_House.Levels > toInt32(1)
			THEN toInt32(1)
		ELSE toInt32(0)
	END
FROM
	Pet3001 x
		INNER JOIN Person3001 a_Person ON x.PersonId = a_Person.Id
		LEFT JOIN House3001 a_House ON a_Person.HouseId = a_House.Id
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Pet3001

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Person3001

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS House3001

