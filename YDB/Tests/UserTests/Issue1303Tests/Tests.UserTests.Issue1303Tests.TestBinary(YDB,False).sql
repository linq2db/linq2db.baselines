-- YDB Ydb
DECLARE $value Bytes(2) -- Binary
SET     $value = '\x04\x05's

INSERT INTO Issue1303
(
	ID,
	`Array`,
	`Binary`
)
VALUES
(
	1,
	'\x01\x02\x03's,
	$value
)

-- YDB Ydb

SELECT
	t1.ID as ID,
	t1.`Array` as Array_1,
	t1.`Binary` as Binary_1
FROM
	Issue1303 t1
WHERE
	t1.ID = 1
LIMIT 2

-- YDB Ydb

SELECT
	t1.ID as ID,
	t1.`Array` as Array_1,
	t1.`Binary` as Binary_1
FROM
	Issue1303 t1
WHERE
	t1.`Array` = '\x01\x02\x03's
LIMIT 2

-- YDB Ydb
DECLARE $value Bytes(2) -- Binary
SET     $value = '\x04\x05's

SELECT
	t1.ID as ID,
	t1.`Array` as Array_1,
	t1.`Binary` as Binary_1
FROM
	Issue1303 t1
WHERE
	t1.`Binary` = $value
LIMIT 2

