BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MasterClass

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

INSERT INTO MasterClass
(
	Id1,
	Id2,
	Value,
	ByteValues
)
VALUES
(1,1,'Str1',NULL),
(2,2,'Str2',NULL),
(3,3,'Str3',NULL),
(4,4,'Str4',NULL),
(5,5,'Str5',NULL),
(6,6,'Str6',NULL),
(7,7,'Str7',NULL),
(8,8,'Str8',NULL),
(9,9,'Str9',NULL),
(10,10,'Str10',NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS DetailClass

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(1001,1,'DetailValue10001'),
(3001,3,'DetailValue30001'),
(3002,3,'DetailValue30002'),
(3003,3,'DetailValue30003'),
(5001,5,'DetailValue50001'),
(5002,5,'DetailValue50002'),
(5003,5,'DetailValue50003'),
(5004,5,'DetailValue50004'),
(5005,5,'DetailValue50005'),
(7001,7,'DetailValue70001'),
(7002,7,'DetailValue70002'),
(7003,7,'DetailValue70003'),
(7004,7,'DetailValue70004'),
(7005,7,'DetailValue70005'),
(7006,7,'DetailValue70006'),
(7007,7,'DetailValue70007'),
(9001,9,'DetailValue90001'),
(9002,9,'DetailValue90002'),
(9003,9,'DetailValue90003'),
(9004,9,'DetailValue90004'),
(9005,9,'DetailValue90005'),
(9006,9,'DetailValue90006'),
(9007,9,'DetailValue90007'),
(9008,9,'DetailValue90008'),
(9009,9,'DetailValue90009')

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	m_1.Id1,
	m_1.Id2,
	d.DetailId,
	d.MasterId,
	d.DetailValue
FROM
	MasterClass m_1
		INNER JOIN DetailClass d ON d.MasterId = m_1.Id1 AND d.MasterId IS NOT NULL AND d.MasterId = m_1.Id2 AND d.MasterId IS NOT NULL
WHERE
	m_1.Id1 >= 0

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	m_2.Id1,
	d.DetailId,
	d.MasterId,
	d.DetailValue
FROM
	(
		SELECT DISTINCT
			m_1.Id1 as Id1
		FROM
			MasterClass m_1
		WHERE
			m_1.Id1 >= 0
	) m_2
		INNER JOIN DetailClass d ON d.MasterId = m_2.Id1 AND d.MasterId IS NOT NULL
WHERE
	d.MasterId % 2 = 0 AND d.MasterId IS NOT NULL

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	m_1.Id1,
	m_1.Id2
FROM
	MasterClass m_1
WHERE
	m_1.Id1 >= 0

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS DetailClass

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MasterClass

