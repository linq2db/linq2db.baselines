BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4364_BaseThing

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4364_BaseThing
(
	Id,
	Type,
	BaseField
)
VALUES
(
	1,
	1,
	2
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4364_BaseThing
(
	Id,
	Type,
	BaseField,
	ConcreteField
)
VALUES
(
	2,
	2,
	3,
	4
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4364_BaseThing
(
	Id,
	Type,
	BaseField,
	IntermediateField,
	ConcreteField
)
VALUES
(
	3,
	101,
	4,
	6,
	5
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4364_BaseThing
(
	Id,
	Type,
	BaseField,
	IntermediateField
)
VALUES
(
	4,
	102,
	5,
	6
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4364_Person

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue4364_Person
(
	Id       Int32,
	FullName String,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4364_Person
(
	Id,
	FullName
)
VALUES
(
	1,
	'Person 1'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4364_Person
(
	Id,
	FullName
)
VALUES
(
	2,
	'Person 2'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4364_Person
(
	Id,
	FullName
)
VALUES
(
	3,
	'Person 3'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4364_Person
(
	Id,
	FullName
)
VALUES
(
	4,
	'Person 4'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4364_Person
(
	Id,
	FullName
)
VALUES
(
	5,
	'Person 5'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4364_Interaction

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4364_Interaction
(
	Id,
	PersonId,
	ThingId
)
VALUES
(
	1,
	2,
	3
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4364_Interaction
(
	Id,
	PersonId,
	ThingId
)
VALUES
(
	2,
	3,
	4
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4364_Interaction
(
	Id,
	PersonId,
	ThingId
)
VALUES
(
	3,
	4,
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4364_Interaction
(
	Id,
	PersonId,
	ThingId
)
VALUES
(
	4,
	1,
	2
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4364_Interaction

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4364_Person

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4364_BaseThing

