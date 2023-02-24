BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue1192Table

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue1192Table
(
	IdId      Int32,
	MyOtherId Int32,
	Status    Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	(
		SELECT
			Count(*)
		FROM
			Issue1192Table t
		WHERE
			t.Status = toInt32(3) AND t.MyOtherId = toInt32(12)
	)
FROM
	Issue1192Table t_1
WHERE
	t_1.MyOtherId = toInt32(12)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue1192Table

