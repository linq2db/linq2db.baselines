BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS catz

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS catz
(
	OwnerId Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO catz
(
	OwnerId
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS owners

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS owners
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO owners
(
	Id
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	catz cat
		INNER JOIN owners owner_1 ON cat.OwnerId IS NOT NULL AND cat.OwnerId = owner_1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS owners

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS catz

