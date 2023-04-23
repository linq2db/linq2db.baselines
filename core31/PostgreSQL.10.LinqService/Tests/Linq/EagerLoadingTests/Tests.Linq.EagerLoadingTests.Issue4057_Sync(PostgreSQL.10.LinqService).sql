BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"lw_Parent"."ParentID",
	detail."ParentID",
	detail."ChildID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID"
		FROM
			(
				SELECT
					x."ParentID"
				FROM
					"Parent" x
				WHERE
					x."ParentID" = 3
				LIMIT :take
			) t1
	) "lw_Parent"
		INNER JOIN "Child" detail ON "lw_Parent"."ParentID" = detail."ParentID"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."ParentID" = 3
LIMIT :take

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Default SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[lw_Parent].[ParentID],
	[detail].[ParentID],
	[detail].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			(
				SELECT
					[x].[ParentID]
				FROM
					[Parent] [x]
				WHERE
					[x].[ParentID] = 3
				LIMIT @take
			) [t1]
	) [lw_Parent]
		INNER JOIN [Child] [detail] ON [lw_Parent].[ParentID] = [detail].[ParentID]

BeforeExecute
-- SQLite.Default SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = 3
LIMIT @take

BeforeExecute
DisposeTransaction
BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Default SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[lw_Parent].[ParentID],
	[detail].[ParentID],
	[detail].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			(
				SELECT
					[x].[ParentID]
				FROM
					[Parent] [x]
				WHERE
					[x].[ParentID] = 3
				LIMIT @take
			) [t1]
	) [lw_Parent]
		INNER JOIN [Child] [detail] ON [lw_Parent].[ParentID] = [detail].[ParentID]

BeforeExecute
-- SQLite.Default SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = 3
LIMIT @take

BeforeExecute
DisposeTransaction
