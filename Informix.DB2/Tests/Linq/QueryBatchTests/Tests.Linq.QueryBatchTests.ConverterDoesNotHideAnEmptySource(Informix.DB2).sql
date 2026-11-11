-- Informix.DB2 Informix
DECLARE @Value Integer(4) -- Int32
SET     @Value = 100

SELECT FIRST 1
	x."Value"
FROM
	ConvertedItem x
WHERE
	x."Value" > @Value

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1."Value"
FROM
	ConvertedItem t1

-- Informix.DB2 Informix
DECLARE @Value Integer(4) -- Int32
SET     @Value = 100

SELECT
	t1.Item1,
	t1.Item1_1
FROM
	(
		SELECT
			1 as c1
		FROM table(set{1})
	) t2
		LEFT JOIN (
			SELECT FIRST 1
				1 as Item1,
				x."Value" as Item1_1
			FROM
				ConvertedItem x
			WHERE
				x."Value" > @Value
		) t1 ON 1=1

