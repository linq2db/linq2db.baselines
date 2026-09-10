-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 2

SELECT FIRST @take
	t1.Id,
	t1.CustomerId,
	t1.Country,
	t1.Region
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.Country ORDER BY e.Id) as RowNumber,
			e.Id,
			e.CustomerId,
			e.Country,
			e.Region
		FROM
			NullableKeyData e
		WHERE
			e.CustomerId LIKE 'DST%' ESCAPE '~'
	) t1
WHERE
	t1.RowNumber = 1
ORDER BY
	t1.Id

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.CustomerId,
	t1.Country,
	t1.Region
FROM
	NullableKeyData t1

