BeforeExecute
-- Informix.DB2 Informix
DECLARE @p BigInt(4) -- Int64
SET     @p = 5
DECLARE @p_1 Integer(4) -- Int32
SET     @p_1 = 15

SELECT
	c_1."value",
	c_1.id
FROM
	(
		SELECT * FROM sample_class where id >= @p and id < @p_1
	) c_1
WHERE
	c_1.id > 10
ORDER BY
	c_1.id

BeforeExecute
-- Informix.DB2 Informix
DECLARE @startId Integer(4) -- Int32
SET     @startId = 5
DECLARE @endId Integer(4) -- Int32
SET     @endId = 15

SELECT
	t."value",
	t.id
FROM
	sample_class t
WHERE
	t.id >= @startId AND t.id < @endId AND t.id > 10
ORDER BY
	t.id

