BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS BackgroundTask

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS BackgroundTask
(
	ID               Nullable(Int32),
	DurationID       Int32,
	DurationInterval Int32,
	PersonID         Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS BackgroundTask

