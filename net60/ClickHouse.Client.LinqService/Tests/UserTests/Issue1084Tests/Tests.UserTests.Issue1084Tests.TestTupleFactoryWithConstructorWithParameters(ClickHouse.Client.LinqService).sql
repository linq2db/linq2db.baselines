BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS i1084_person

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS i1084_person
(
	Id            Int32,
	Number        Int32,
	StatusBitmask Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS i1084_student

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS i1084_student
(
	Id            Int32,
	Number        Nullable(String),
	StatusBitmask Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS i1084_student

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS i1084_person

