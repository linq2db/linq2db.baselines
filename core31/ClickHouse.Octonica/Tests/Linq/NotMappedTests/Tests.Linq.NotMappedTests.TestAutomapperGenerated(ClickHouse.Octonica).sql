BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SuperClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS SuperClass
(
	Id    Int32,
	Value Nullable(String),

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO SuperClass
(
	Id,
	Value
)
VALUES
(toInt32(1),'Super 1'),
(toInt32(2),'Super 2'),
(toInt32(3),'Super 3'),
(toInt32(4),'Super 4'),
(toInt32(5),'Super 5'),
(toInt32(6),'Super 6'),
(toInt32(7),'Super 7'),
(toInt32(8),'Super 8'),
(toInt32(9),'Super 9'),
(toInt32(10),'Super 10')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Subclass1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Subclass1
(
	Id       Int32,
	ParentId Nullable(Int32),
	Value    Nullable(String),

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Subclass1
(
	Id,
	ParentId,
	Value
)
VALUES
(toInt32(10),NULL,'Sub1 1'),
(toInt32(20),toInt32(2),'Sub1 2'),
(toInt32(30),NULL,'Sub1 3'),
(toInt32(40),toInt32(4),'Sub1 4'),
(toInt32(50),NULL,'Sub1 5'),
(toInt32(60),toInt32(6),'Sub1 6'),
(toInt32(70),NULL,'Sub1 7'),
(toInt32(80),toInt32(8),'Sub1 8'),
(toInt32(90),NULL,'Sub1 9'),
(toInt32(100),toInt32(10),'Sub1 10')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Subclass2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Subclass2
(
	Id       Int32,
	ParentId Nullable(Int32),
	Value    Nullable(String),

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Subclass2
(
	Id,
	ParentId,
	Value
)
VALUES
(toInt32(100),NULL,'Sub2 1'),
(toInt32(200),NULL,'Sub2 2'),
(toInt32(300),NULL,'Sub2 3'),
(toInt32(400),toInt32(40),'Sub2 4'),
(toInt32(500),NULL,'Sub2 5'),
(toInt32(600),NULL,'Sub2 6'),
(toInt32(700),NULL,'Sub2 7'),
(toInt32(800),toInt32(80),'Sub2 8'),
(toInt32(900),NULL,'Sub2 9'),
(toInt32(1000),NULL,'Sub2 10')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.Id,
	t.Value,
	a_Association1.Id,
	a_Association1.Value,
	a_Association1.ParentId,
	a_Association2.Id,
	a_Association2.Value,
	a_Association2.ParentId
FROM
	SuperClass t
		LEFT JOIN Subclass1 a_Association1 ON t.Id = a_Association1.ParentId
		LEFT JOIN Subclass2 a_Association2 ON a_Association1.Id = a_Association2.ParentId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Subclass2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Subclass1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS SuperClass

