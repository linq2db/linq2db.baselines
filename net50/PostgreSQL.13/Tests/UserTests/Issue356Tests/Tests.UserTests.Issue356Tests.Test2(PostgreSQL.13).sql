BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Child]
WHERE
	[Child].[ParentID] >= 1000

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[BinaryValue],
	[t1].[SmallIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 10
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT
	cp."ParentID",
	c_1."ChildID"
FROM
	"Parent" cp
		INNER JOIN LATERAL (
			SELECT
				t3."ParentID",
				t3."ChildID"
			FROM
				(
					SELECT
						t1."ParentID",
						t1."ChildID"
					FROM
						"Child" t1
					UNION
					SELECT
						t2."ParentID",
						t2."ChildID"
					FROM
						"Child" t2
				) t3
			ORDER BY
				t3."ParentID"
			LIMIT :take_1
		) c_1 ON 1=1
WHERE
	c_1."ParentID" = cp."ParentID"
ORDER BY
	cp."ParentID"
LIMIT :take

