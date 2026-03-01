-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 1

SELECT FIRST @take
	g_2.Count_1,
	1 + g_2.Expr,
	g_2.Max_1
FROM
	(
		SELECT
			COUNT(*) as Count_1,
			MIN(g_1.ChildID) as Expr,
			MAX(g_1.ChildID) as Max_1
		FROM
			Child g_1
	) g_2

-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

