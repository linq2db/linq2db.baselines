BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS MasterClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS MasterClass
(
	Id1        Int32,
	Id2        Int32,
	Value      Nullable(String),
	ByteValues Nullable(String),

	PRIMARY KEY (Id1, Id2)
)
ENGINE = MergeTree()
ORDER BY (Id1, Id2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO MasterClass
(
	Id1,
	Id2,
	Value,
	ByteValues
)
VALUES
(toInt32(1),toInt32(1),'Str1',NULL),
(toInt32(2),toInt32(2),'Str2',NULL),
(toInt32(3),toInt32(3),'Str3',NULL),
(toInt32(4),toInt32(4),'Str4',NULL),
(toInt32(5),toInt32(5),'Str5',NULL),
(toInt32(6),toInt32(6),'Str6',NULL),
(toInt32(7),toInt32(7),'Str7',NULL),
(toInt32(8),toInt32(8),'Str8',NULL),
(toInt32(9),toInt32(9),'Str9',NULL),
(toInt32(10),toInt32(10),'Str10',NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DetailClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS DetailClass
(
	DetailId    Int32,
	MasterId    Nullable(Int32),
	DetailValue Nullable(String),

	PRIMARY KEY (DetailId)
)
ENGINE = MergeTree()
ORDER BY DetailId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(toInt32(1001),toInt32(1),'DetailValue10001'),
(toInt32(3001),toInt32(3),'DetailValue30001'),
(toInt32(3002),toInt32(3),'DetailValue30002'),
(toInt32(3003),toInt32(3),'DetailValue30003'),
(toInt32(5001),toInt32(5),'DetailValue50001'),
(toInt32(5002),toInt32(5),'DetailValue50002'),
(toInt32(5003),toInt32(5),'DetailValue50003'),
(toInt32(5004),toInt32(5),'DetailValue50004'),
(toInt32(5005),toInt32(5),'DetailValue50005'),
(toInt32(7001),toInt32(7),'DetailValue70001'),
(toInt32(7002),toInt32(7),'DetailValue70002'),
(toInt32(7003),toInt32(7),'DetailValue70003'),
(toInt32(7004),toInt32(7),'DetailValue70004'),
(toInt32(7005),toInt32(7),'DetailValue70005'),
(toInt32(7006),toInt32(7),'DetailValue70006'),
(toInt32(7007),toInt32(7),'DetailValue70007'),
(toInt32(9001),toInt32(9),'DetailValue90001'),
(toInt32(9002),toInt32(9),'DetailValue90002'),
(toInt32(9003),toInt32(9),'DetailValue90003'),
(toInt32(9004),toInt32(9),'DetailValue90004'),
(toInt32(9005),toInt32(9),'DetailValue90005'),
(toInt32(9006),toInt32(9),'DetailValue90006'),
(toInt32(9007),toInt32(9),'DetailValue90007'),
(toInt32(9008),toInt32(9),'DetailValue90008'),
(toInt32(9009),toInt32(9),'DetailValue90009')

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	m_1.Id1,
	m_1.Id2,
	detail.DetailId,
	detail.MasterId,
	detail.DetailValue
FROM
	MasterClass m_1
		INNER JOIN DetailClass detail ON m_1.Id1 = detail.MasterId
WHERE
	m_1.Id1 >= toInt32(0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	m_1.Id1,
	m_1.Id2,
	_d.DetailId,
	_d.MasterId,
	_d.DetailValue
FROM
	MasterClass m_1
		INNER JOIN DetailClass _d ON m_1.Id1 = _d.MasterId AND _d.DetailId % toInt32(2) = toInt32(0)
WHERE
	m_1.Id1 >= toInt32(0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	m_1.Id1,
	m_1.Id2,
	detail.DetailId
FROM
	MasterClass m_1
		INNER JOIN DetailClass detail ON m_1.Id1 = detail.MasterId AND detail.DetailId % toInt32(2) = toInt32(0)
WHERE
	m_1.Id1 >= toInt32(0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	m_1.Id1,
	m_1.Id2,
	_d.DetailId,
	_d.MasterId,
	_d.DetailValue
FROM
	MasterClass m_1
		INNER JOIN DetailClass _d ON m_1.Id1 = _d.MasterId AND _d.DetailId % toInt32(2) = toInt32(0)
WHERE
	m_1.Id1 >= toInt32(0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	m_1.Id1,
	m_1.Id2
FROM
	MasterClass m_1
WHERE
	m_1.Id1 >= toInt32(0)
ORDER BY
	m_1.Id2 DESC

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DetailClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS MasterClass

