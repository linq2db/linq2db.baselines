-- YDB Ydb

SELECT /* Main */
	p.ParentID as ParentID,
	p.Value1 as Value1,
	t1.Count_1 as Count_1
FROM
	(
		SELECT /* Inline */
			c_1.ParentID as ParentID,
			COUNT(*) as Count_1
		FROM
			Child c_1
		GROUP BY
			c_1.ParentID
	) t1
		CROSS JOIN Parent p
WHERE
	p.ParentID = t1.ParentID

