-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1."Value",
	t1.GroupId,
	t1.Name
FROM
	BatchItem t1

-- Informix.DB2 Informix
DECLARE @Item1 Integer(4) -- Int32
SET     @Item1 = 2

SELECT
	t1.Item1_1,
	CASE
		WHEN t1.Item1 IS NOT NULL THEN @Item1::Int
		ELSE NULL
	END
FROM
	(
		SELECT
			1 as c1
		FROM table(set{1})
	) t2
		LEFT JOIN (
			SELECT FIRST 1
				@Item1::Int as Item1,
				1 as Item1_1
			FROM
				BatchItem i
			WHERE
				i.Id = 1
		) t1 ON 1=1

-- Informix.DB2 Informix
SELECT FIRST 1
	1
FROM
	BatchItem i
WHERE
	i.Id = 1

