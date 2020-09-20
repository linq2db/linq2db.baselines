BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

BeforeExecute
-- Firebird3 Firebird

SELECT
	"a_Parent"."ParentID"
FROM
	"GrandChild" "t1"
		INNER JOIN "Parent" "a_Parent" ON "t1"."ParentID" = "a_Parent"."ParentID"
GROUP BY
	"a_Parent"."ParentID"
HAVING
	Count(*) > 2

