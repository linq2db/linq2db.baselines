BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InstanceClass

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS InstanceClass
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	1,
	101
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	2,
	102
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	3,
	103
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	4,
	104
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	5,
	105
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	6,
	106
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	7,
	107
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	8,
	108
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	9,
	109
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	10,
	110
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	11,
	111
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	12,
	112
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	13,
	113
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	14,
	114
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	15,
	115
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	16,
	116
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	17,
	117
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	18,
	118
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	19,
	119
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InstanceClass
(
	Id,
	Value
)
VALUES
(
	20,
	120
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	InstanceClass t
WHERE
	concat(toString(t.Id), toString(t.Value)) = concat(toString(t.Id), toString(t.Value))

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InstanceClass

