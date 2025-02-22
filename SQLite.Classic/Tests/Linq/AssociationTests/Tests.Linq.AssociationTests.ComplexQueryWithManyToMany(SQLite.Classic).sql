BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 3
DECLARE @id1  -- Int32
SET     @id1 = 3

SELECT
	[t1].[ChildID]
FROM
	[GrandChild] [t1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					(
						SELECT
							[a_Parent].[ParentID]
						FROM
							[GrandChild] [a_Child]
								LEFT JOIN [Parent] [a_Parent] ON [a_Child].[ParentID] = [a_Parent].[ParentID]
						WHERE
							[a_ManyToMany].[ChildID] = [a_Child].[ChildID]
					) as [ParentID]
				FROM
					[Parent] [t2]
						INNER JOIN [Child] [a_ManyToMany] ON [t2].[ParentID] = [a_ManyToMany].[ParentID]
				WHERE
					[t2].[ParentID] = @id
			) [li]
		WHERE
			[li].[ParentID] IS NOT NULL AND [li].[ParentID] = @id1
	)
ORDER BY
	[t1].[ChildID]
LIMIT 1

