BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] >= 1000

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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	f."Label",
	f."SubSum",
	f.c2,
	f."Count_1"
FROM
	(
		SELECT
			' ' || Cast(Coalesce(e."Value1", 0) as VarChar(11)) as c1,
			(
				SELECT
					Sum(c_3."ChildID")
				FROM
					"Child" c_3
						LEFT JOIN "Parent" "a_Parent_3" ON c_3."ParentID" = "a_Parent_3"."ParentID"
				WHERE
					("a_Parent_3"."ParentID" = e."ParentID" AND ("a_Parent_3"."Value1" IS NULL AND e."Value1" IS NULL OR "a_Parent_3"."Value1" = e."Value1"))
			) as "Sum_1",
			Coalesce(e."Value1", 0) as "Label",
			(
				SELECT
					Sum(c_1."ChildID")
				FROM
					"Child" c_1
						LEFT JOIN "Parent" "a_Parent" ON c_1."ParentID" = "a_Parent"."ParentID"
				WHERE
					("a_Parent"."ParentID" = e."ParentID" AND ("a_Parent"."Value1" IS NULL AND e."Value1" IS NULL OR "a_Parent"."Value1" = e."Value1"))
			) as "SubSum",
			EXISTS(
				SELECT
					*
				FROM
					"Child" c_2
						LEFT JOIN "Parent" "a_Parent_1" ON c_2."ParentID" = "a_Parent_1"."ParentID"
				WHERE
					("a_Parent_1"."ParentID" = e."ParentID" AND ("a_Parent_1"."Value1" IS NULL AND e."Value1" IS NULL OR "a_Parent_1"."Value1" = e."Value1"))
			) as c2,
			(
				SELECT
					Count(*)
				FROM
					"Child" p
						LEFT JOIN "Parent" "a_Parent_2" ON p."ParentID" = "a_Parent_2"."ParentID"
				WHERE
					("a_Parent_2"."ParentID" = e."ParentID" AND ("a_Parent_2"."Value1" IS NULL AND e."Value1" IS NULL OR "a_Parent_2"."Value1" = e."Value1"))
			) as "Count_1"
		FROM
			"Parent" e
	) f
WHERE
	f.c1 LIKE '%1%' AND f."Sum_1" > 0

