-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 2
DECLARE @skip_1 Integer(4) -- Int32
SET     @skip_1 = 1
DECLARE @take Integer(4) -- Int32
SET     @take = 7

SELECT SKIP @skip
	t2.ParentID,
	t2.ChildID
FROM
	(
		SELECT SKIP @skip_1 FIRST @take
			t1.ChildID,
			t1.ParentID
		FROM
			Child t1
		ORDER BY
			t1.ChildID DESC
	) t2
ORDER BY
	t2.ChildID

