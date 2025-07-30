BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @p Bigint -- Int64
SET     @p = 5
DECLARE @endId Integer -- Int32
SET     @endId = 14

SELECT
	s.value,
	s.id
FROM
	sample_class t1
		INNER JOIN (
			SELECT * FROM sample_class where id >= :p and id < :endId
		) s ON s.id = t1.id
WHERE
	s.id > 10
ORDER BY
	s.id

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @startId Integer -- Int32
SET     @startId = 5
DECLARE @endId Integer -- Int32
SET     @endId = 14

SELECT
	t.value,
	t.id
FROM
	sample_class t
WHERE
	t.id >= :startId AND t.id < :endId AND t.id > 10
ORDER BY
	t.id

