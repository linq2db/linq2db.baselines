-- ClickHouse.MySql ClickHouse

INSERT INTO Issue1316Tests
(
	ID
)
VALUES
(
	5
)

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID
FROM
	Issue1316Tests t1
WHERE
	t1.ID IN (4, 5, 6)
LIMIT 2

