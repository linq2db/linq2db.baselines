BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue1192Table

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue1192Table
(
	IdId      Int32,
	MyOtherId Int32,
	Status    Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(CASE
		WHEN t.Status = 3 THEN 1
		ELSE NULL
	END)
FROM
	Issue1192Table t
WHERE
	t.MyOtherId = 12
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue1192Table

