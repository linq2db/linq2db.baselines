BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS MasterManyId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS MasterManyId
(
	Id1   Int32,
	Id2   Int32,
	Id3   Int32,
	Id4   Int32,
	Id5   Int32,
	Id6   Int32,
	Id7   Int32,
	Id8   Int32,
	Id9   Int32,
	Value Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO MasterManyId
(
	Id1,
	Id2,
	Id3,
	Id4,
	Id5,
	Id6,
	Id7,
	Id8,
	Id9,
	Value
)
VALUES
(toInt32(1),toInt32(3),toInt32(4),toInt32(5),toInt32(6),toInt32(7),toInt32(8),toInt32(9),toInt32(10),'Str1'),
(toInt32(2),toInt32(4),toInt32(5),toInt32(6),toInt32(7),toInt32(8),toInt32(9),toInt32(10),toInt32(11),'Str2'),
(toInt32(3),toInt32(5),toInt32(6),toInt32(7),toInt32(8),toInt32(9),toInt32(10),toInt32(11),toInt32(12),'Str3'),
(toInt32(4),toInt32(6),toInt32(7),toInt32(8),toInt32(9),toInt32(10),toInt32(11),toInt32(12),toInt32(13),'Str4'),
(toInt32(5),toInt32(7),toInt32(8),toInt32(9),toInt32(10),toInt32(11),toInt32(12),toInt32(13),toInt32(14),'Str5'),
(toInt32(6),toInt32(8),toInt32(9),toInt32(10),toInt32(11),toInt32(12),toInt32(13),toInt32(14),toInt32(15),'Str6'),
(toInt32(7),toInt32(9),toInt32(10),toInt32(11),toInt32(12),toInt32(13),toInt32(14),toInt32(15),toInt32(16),'Str7'),
(toInt32(8),toInt32(10),toInt32(11),toInt32(12),toInt32(13),toInt32(14),toInt32(15),toInt32(16),toInt32(17),'Str8'),
(toInt32(9),toInt32(11),toInt32(12),toInt32(13),toInt32(14),toInt32(15),toInt32(16),toInt32(17),toInt32(18),'Str9'),
(toInt32(10),toInt32(12),toInt32(13),toInt32(14),toInt32(15),toInt32(16),toInt32(17),toInt32(18),toInt32(19),'Str10')

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
(toInt32(2001),toInt32(2),'DetailValue20001'),
(toInt32(2002),toInt32(2),'DetailValue20002'),
(toInt32(3001),toInt32(3),'DetailValue30001'),
(toInt32(3002),toInt32(3),'DetailValue30002'),
(toInt32(3003),toInt32(3),'DetailValue30003'),
(toInt32(4001),toInt32(4),'DetailValue40001'),
(toInt32(4002),toInt32(4),'DetailValue40002'),
(toInt32(4003),toInt32(4),'DetailValue40003'),
(toInt32(4004),toInt32(4),'DetailValue40004'),
(toInt32(5001),toInt32(5),'DetailValue50001'),
(toInt32(5002),toInt32(5),'DetailValue50002'),
(toInt32(5003),toInt32(5),'DetailValue50003'),
(toInt32(5004),toInt32(5),'DetailValue50004'),
(toInt32(5005),toInt32(5),'DetailValue50005'),
(toInt32(6001),toInt32(6),'DetailValue60001'),
(toInt32(6002),toInt32(6),'DetailValue60002'),
(toInt32(6003),toInt32(6),'DetailValue60003'),
(toInt32(6004),toInt32(6),'DetailValue60004'),
(toInt32(6005),toInt32(6),'DetailValue60005'),
(toInt32(6006),toInt32(6),'DetailValue60006'),
(toInt32(7001),toInt32(7),'DetailValue70001'),
(toInt32(7002),toInt32(7),'DetailValue70002'),
(toInt32(7003),toInt32(7),'DetailValue70003'),
(toInt32(7004),toInt32(7),'DetailValue70004'),
(toInt32(7005),toInt32(7),'DetailValue70005'),
(toInt32(7006),toInt32(7),'DetailValue70006'),
(toInt32(7007),toInt32(7),'DetailValue70007'),
(toInt32(8001),toInt32(8),'DetailValue80001'),
(toInt32(8002),toInt32(8),'DetailValue80002'),
(toInt32(8003),toInt32(8),'DetailValue80003'),
(toInt32(8004),toInt32(8),'DetailValue80004'),
(toInt32(8005),toInt32(8),'DetailValue80005'),
(toInt32(8006),toInt32(8),'DetailValue80006'),
(toInt32(8007),toInt32(8),'DetailValue80007'),
(toInt32(8008),toInt32(8),'DetailValue80008'),
(toInt32(9001),toInt32(9),'DetailValue90001'),
(toInt32(9002),toInt32(9),'DetailValue90002'),
(toInt32(9003),toInt32(9),'DetailValue90003'),
(toInt32(9004),toInt32(9),'DetailValue90004'),
(toInt32(9005),toInt32(9),'DetailValue90005'),
(toInt32(9006),toInt32(9),'DetailValue90006'),
(toInt32(9007),toInt32(9),'DetailValue90007'),
(toInt32(9008),toInt32(9),'DetailValue90008'),
(toInt32(9009),toInt32(9),'DetailValue90009'),
(toInt32(10001),toInt32(10),'DetailValue100001'),
(toInt32(10002),toInt32(10),'DetailValue100002'),
(toInt32(10003),toInt32(10),'DetailValue100003'),
(toInt32(10004),toInt32(10),'DetailValue100004'),
(toInt32(10005),toInt32(10),'DetailValue100005'),
(toInt32(10006),toInt32(10),'DetailValue100006'),
(toInt32(10007),toInt32(10),'DetailValue100007'),
(toInt32(10008),toInt32(10),'DetailValue100008'),
(toInt32(10009),toInt32(10),'DetailValue100009'),
(toInt32(10010),toInt32(10),'DetailValue1000010')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.DetailId,
	t1.MasterId,
	t1.DetailValue
FROM
	DetailClass t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	(
		SELECT
			t1.Id1 as Id1
		FROM
			MasterManyId t1
		LIMIT toInt32(11)
	) t2
GROUP BY
	t2.Id1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DetailClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS MasterManyId

