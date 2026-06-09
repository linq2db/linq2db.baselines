-- YDB Ydb

SELECT
	t1.ParentID as ParentID
FROM
	Parent p
		INNER JOIN (
			SELECT
				ch.ParentID as ParentID,
				ROW_NUMBER() OVER (PARTITION BY ch.ParentID ORDER BY ch.ParentID) as rn
			FROM
				Child ch
		) t1 ON p.ParentID = t1.ParentID
WHERE
	p.ParentID = 1 AND t1.rn = 1

