-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT FIRST @take
	t1.Value1
FROM
	(
		SELECT DISTINCT
			p.Value1
		FROM
			Parent p
	) t1
ORDER BY
	CASE
		WHEN t1.Value1 IS NULL THEN 0
		ELSE 1
	END,
	t1.Value1

-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

