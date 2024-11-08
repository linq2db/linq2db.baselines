BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS BackgroundTask

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS BackgroundTask
(
	ID               Nullable(Int32),
	DurationID       Int32,
	DurationInterval Int32,
	PersonID         Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO BackgroundTask
(
	ID,
	DurationID,
	DurationInterval,
	PersonID
)
VALUES
(
	3,
	2,
	4,
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS BackgroundTask

