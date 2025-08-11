BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO Issue1279Table
(
	CharFld
)
VALUES
(
	'P'
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.CharFld
FROM
	Issue1279Table t1
LIMIT 1

