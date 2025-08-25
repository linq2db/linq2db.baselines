BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

INSERT INTO Issue1303
(
	ID,
	Array,
	Binary
)
VALUES
(
	1,
	'\x01\x02\x03',
	'\x04\x05'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.ID,
	t1.Array,
	t1.Binary
FROM
	Issue1303 t1
WHERE
	t1.ID = 1
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.ID,
	t1.Array,
	t1.Binary
FROM
	Issue1303 t1
WHERE
	t1.Array = '\x01\x02\x03'
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.ID,
	t1.Array,
	t1.Binary
FROM
	Issue1303 t1
WHERE
	t1.Binary = '\x04\x05'
LIMIT 2

