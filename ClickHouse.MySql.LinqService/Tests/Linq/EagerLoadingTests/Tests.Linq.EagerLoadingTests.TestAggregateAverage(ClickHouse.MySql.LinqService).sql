BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS MasterClass

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DetailClass

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DetailClass

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS MasterClass

