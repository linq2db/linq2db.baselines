BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(left_1.ParentID),
	COUNT(t1.ParentID),
	COUNT(*)
FROM
	Parent left_1
		FULL JOIN (
			SELECT
				p.ParentID as ParentID
			FROM
				Parent p
			WHERE
				p.ParentID <> toInt32(1)
		) t1 ON t1.ParentID = left_1.ParentID
LIMIT toInt32(2)

