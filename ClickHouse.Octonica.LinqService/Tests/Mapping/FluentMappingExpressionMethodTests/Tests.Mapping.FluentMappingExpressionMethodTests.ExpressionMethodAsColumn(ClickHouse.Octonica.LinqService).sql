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
(
	1,
	101
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value,
	concat('M', toString(t1.Id))
FROM
	InstanceClass t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS InstanceClass

