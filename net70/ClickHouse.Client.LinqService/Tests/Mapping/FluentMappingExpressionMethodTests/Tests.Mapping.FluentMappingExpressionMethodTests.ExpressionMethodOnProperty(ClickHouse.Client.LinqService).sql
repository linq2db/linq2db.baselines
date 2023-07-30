BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InstanceClass

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS InstanceClass
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	toInt32(1),
	toInt32(101)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	toInt32(2),
	toInt32(102)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	toInt32(3),
	toInt32(103)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	toInt32(4),
	toInt32(104)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	toInt32(5),
	toInt32(105)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	toInt32(6),
	toInt32(106)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	toInt32(7),
	toInt32(107)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	toInt32(8),
	toInt32(108)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	toInt32(9),
	toInt32(109)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	toInt32(10),
	toInt32(110)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	toInt32(11),
	toInt32(111)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	toInt32(12),
	toInt32(112)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	toInt32(13),
	toInt32(113)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	toInt32(14),
	toInt32(114)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	toInt32(15),
	toInt32(115)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	toInt32(16),
	toInt32(116)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	toInt32(17),
	toInt32(117)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	toInt32(18),
	toInt32(118)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	toInt32(19),
	toInt32(119)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	toInt32(20),
	toInt32(120)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	InstanceClass t
WHERE
	concat(toString(t.Id), toString(t.Value)) = concat(toString(t.Id), toString(t.Value))

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InstanceClass

