BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS catz

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS catz
(
	OwnerId Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO catz
(
	OwnerId
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS owners

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS owners
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO owners
(
	Id
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	catz cat
		INNER JOIN owners owner_1 ON cat.OwnerId IS NOT NULL AND cat.OwnerId = owner_1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS owners

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS catz

