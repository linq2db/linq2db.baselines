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
(1,101),
(2,102),
(3,103),
(4,104),
(5,105),
(6,106),
(7,107),
(8,108),
(9,109),
(10,110),
(11,111),
(12,112),
(13,113),
(14,114),
(15,115),
(16,116),
(17,117),
(18,118),
(19,119),
(20,120)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	InstanceClass t
WHERE
	concat(toString(t.Id), toString(t.Value)) = concat(toString(t.Id), toString(t.Value))

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InstanceClass

