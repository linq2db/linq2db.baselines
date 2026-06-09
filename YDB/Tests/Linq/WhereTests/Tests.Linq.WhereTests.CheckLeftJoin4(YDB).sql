-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
		LEFT JOIN (
			SELECT
				c_1.ParentID as ParentID
			FROM
				Child c_1
			WHERE
				c_1.ParentID > 0
		) ch ON p.ParentID = ch.ParentID
WHERE
	ch.ParentID IS NULL

