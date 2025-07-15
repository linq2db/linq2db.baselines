BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue1316Tests
(
	ID
)
VALUES
(
	5
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	Issue1316Tests t1
WHERE
	t1.ID = 5
LIMIT 2

