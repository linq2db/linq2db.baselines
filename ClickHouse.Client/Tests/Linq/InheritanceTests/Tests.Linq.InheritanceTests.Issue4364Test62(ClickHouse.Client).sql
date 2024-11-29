BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4364_BaseThing

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue4364_BaseThing
(
	Id                Int32,
	Type              Int32,
	BaseField         Int32,
	ConcreteField     Nullable(Int32),
	IntermediateField Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue4364_BaseThing
(
	Id,
	Type,
	BaseField,
	ConcreteField,
	IntermediateField
)
VALUES
(1,1,2,0,0),
(2,2,3,4,0),
(3,101,4,0,6),
(4,102,5,0,0)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4364_Person

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue4364_Person
(
	Id       Int32,
	FullName String,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue4364_Person
(
	Id,
	FullName
)
VALUES
(1,'Person 1'),
(2,'Person 2'),
(3,'Person 3'),
(4,'Person 4'),
(5,'Person 5')

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4364_Interaction

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue4364_Interaction
(
	Id       Int32,
	PersonId Int32,
	ThingId  Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue4364_Interaction
(
	Id,
	PersonId,
	ThingId
)
VALUES
(1,2,3),
(2,3,4),
(3,4,1),
(4,1,2)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Type,
	p.FullName
FROM
	Issue4364_BaseThing x
		INNER JOIN Issue4364_Interaction i ON x.Id = i.ThingId
		INNER JOIN Issue4364_Person p ON i.PersonId = p.Id
WHERE
	x.Type = 101 OR x.Type = 102
ORDER BY
	x.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4364_Interaction

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4364_Person

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4364_BaseThing

