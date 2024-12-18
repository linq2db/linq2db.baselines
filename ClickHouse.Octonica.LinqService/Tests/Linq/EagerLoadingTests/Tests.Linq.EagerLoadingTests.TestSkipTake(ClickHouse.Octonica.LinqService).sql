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
(
	1,
	1,
	'Str1',
	NULL
)

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
(
	2,
	2,
	'Str2',
	NULL
)

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
(
	3,
	3,
	'Str3',
	NULL
)

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
(
	4,
	4,
	'Str4',
	NULL
)

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
(
	5,
	5,
	'Str5',
	NULL
)

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
(
	6,
	6,
	'Str6',
	NULL
)

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
(
	7,
	7,
	'Str7',
	NULL
)

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
(
	8,
	8,
	'Str8',
	NULL
)

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
(
	9,
	9,
	'Str9',
	NULL
)

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
(
	10,
	10,
	'Str10',
	NULL
)

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
(
	1001,
	1,
	'DetailValue10001'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	3001,
	3,
	'DetailValue30001'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	3002,
	3,
	'DetailValue30002'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	3003,
	3,
	'DetailValue30003'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	5001,
	5,
	'DetailValue50001'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	5002,
	5,
	'DetailValue50002'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	5003,
	5,
	'DetailValue50003'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	5004,
	5,
	'DetailValue50004'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	5005,
	5,
	'DetailValue50005'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	7001,
	7,
	'DetailValue70001'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	7002,
	7,
	'DetailValue70002'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	7003,
	7,
	'DetailValue70003'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	7004,
	7,
	'DetailValue70004'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	7005,
	7,
	'DetailValue70005'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	7006,
	7,
	'DetailValue70006'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	7007,
	7,
	'DetailValue70007'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	9001,
	9,
	'DetailValue90001'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	9002,
	9,
	'DetailValue90002'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	9003,
	9,
	'DetailValue90003'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	9004,
	9,
	'DetailValue90004'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	9005,
	9,
	'DetailValue90005'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	9006,
	9,
	'DetailValue90006'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	9007,
	9,
	'DetailValue90007'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	9008,
	9,
	'DetailValue90008'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DetailClass
(
	DetailId,
	MasterId,
	DetailValue
)
VALUES
(
	9009,
	9,
	'DetailValue90009'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
	) m_2
		INNER JOIN DetailClass d ON m_2.Id1 = d.MasterId AND d.MasterId IS NOT NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_2.Id1,
	d_1.DetailId,
	d_1.MasterId,
	d_1.DetailValue
FROM
	(
		SELECT DISTINCT
			m_1.Id1 as Id1
		FROM
			MasterClass m_1
	) m_2
		INNER JOIN (
			SELECT
				d.DetailId as DetailId,
				d.MasterId as MasterId,
				d.DetailValue as DetailValue,
				ROW_NUMBER() OVER (PARTITION BY d.MasterId ORDER BY d.DetailId) as rn
			FROM
				DetailClass d
		) d_1 ON m_2.Id1 = d_1.MasterId AND d_1.MasterId IS NOT NULL AND d_1.rn > 1 AND d_1.rn <= 3

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id1,
	m_1.Id2,
	m_1.Value,
	m_1.ByteValues
FROM
	MasterClass m_1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id1,
	d.DetailId,
	d.MasterId,
	d.DetailValue
FROM
	(
		SELECT DISTINCT
			t1.Id1 as Id1
		FROM
			MasterClass t1
	) m_1
		INNER JOIN DetailClass d ON m_1.Id1 = d.MasterId AND d.MasterId IS NOT NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id1,
	t1.Id2,
	t1.Value,
	t1.ByteValues
FROM
	MasterClass t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DetailClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS MasterClass

