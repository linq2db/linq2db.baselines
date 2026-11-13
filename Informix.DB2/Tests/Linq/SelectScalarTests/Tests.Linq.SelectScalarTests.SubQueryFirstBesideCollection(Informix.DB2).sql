-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 2

SELECT FIRST @take
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID

-- Informix.DB2 Informix
SELECT
	t2.FirstId
FROM
	(
		SELECT
			1 as c1
		FROM table(set{1})
	) t3
		CROSS JOIN (
			SELECT FIRST 1
				t1.ParentID as FirstId
			FROM
				Parent t1
			ORDER BY
				t1.ParentID
		) t2

