-- YDB Ydb
DECLARE $startId Int64
SET     $startId = 5
DECLARE $p Int32
SET     $p = 15

SELECT
	c_1.`value` as Value_1,
	c_1.id as Id
FROM
	(
		SELECT * FROM sample_class where id >= $startId and id < $p
	) c_1
WHERE
	c_1.id > 10
ORDER BY
	c_1.id

-- YDB Ydb
DECLARE $startId Int32
SET     $startId = 5
DECLARE $endId Int32
SET     $endId = 15

SELECT
	t.`value` as Value_1,
	t.id as Id
FROM
	sample_class t
WHERE
	t.id >= $startId AND t.id < $endId AND t.id > 10
ORDER BY
	t.id

