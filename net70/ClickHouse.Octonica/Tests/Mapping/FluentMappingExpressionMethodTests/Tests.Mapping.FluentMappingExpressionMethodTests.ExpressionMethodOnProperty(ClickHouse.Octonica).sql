BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS InstanceClass

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS InstanceClass
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(toInt32(1),toInt32(101)),
(toInt32(2),toInt32(102)),
(toInt32(3),toInt32(103)),
(toInt32(4),toInt32(104)),
(toInt32(5),toInt32(105)),
(toInt32(6),toInt32(106)),
(toInt32(7),toInt32(107)),
(toInt32(8),toInt32(108)),
(toInt32(9),toInt32(109)),
(toInt32(10),toInt32(110)),
(toInt32(11),toInt32(111)),
(toInt32(12),toInt32(112)),
(toInt32(13),toInt32(113)),
(toInt32(14),toInt32(114)),
(toInt32(15),toInt32(115)),
(toInt32(16),toInt32(116)),
(toInt32(17),toInt32(117)),
(toInt32(18),toInt32(118)),
(toInt32(19),toInt32(119)),
(toInt32(20),toInt32(120))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	InstanceClass t
WHERE
	concat(toString(t.Id), toString(t.Value)) = concat(toString(t.Id), toString(t.Value))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS InstanceClass

