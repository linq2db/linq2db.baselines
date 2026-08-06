-- Informix.DB2 Informix
SELECT
	t.GroupId,
	COUNT(*),
	COUNT(CASE
		WHEN Mod(t.DataValue, 2) = 0 THEN 1
		ELSE NULL
	END),
	COUNT(DISTINCT t.DataValue)
FROM
	AggregationData t
WHERE
	t.DataValue IS NOT NULL
GROUP BY
	t.GroupId

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.GroupId,
	t1.DataValue
FROM
	AggregationData t1

