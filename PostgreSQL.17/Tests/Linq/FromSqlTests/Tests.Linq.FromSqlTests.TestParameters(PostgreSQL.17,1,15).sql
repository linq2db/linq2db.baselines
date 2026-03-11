-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @startId Bigint -- Int64
SET     @startId = 5
DECLARE @p Integer -- Int32
SET     @p = 15

SELECT
	c_1.value,
	c_1.id
FROM
	(
		SELECT * FROM
		sample_class
		where id >= :startId and id < :p
	) c_1
WHERE
	c_1.id > 10
ORDER BY
	c_1.id

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @startId Integer -- Int32
SET     @startId = 5
DECLARE @endId Integer -- Int32
SET     @endId = 15

SELECT
	t.value,
	t.id
FROM
	sample_class t
WHERE
	t.id >= :startId AND t.id < :endId AND t.id > 10
ORDER BY
	t.id

