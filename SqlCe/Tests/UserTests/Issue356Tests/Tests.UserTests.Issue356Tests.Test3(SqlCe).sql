BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 10

SELECT TOP (@take)
	[x].[ParentID],
	[t2].[ChildID]
FROM
	[Parent] [x]
		INNER JOIN (
			SELECT
				[c_2].[ParentID],
				[c_2].[ChildID]
			FROM
				(
					SELECT
						[c_1].[ParentID],
						[c_1].[ChildID]
					FROM
						[Child] [c_1]
					UNION
					SELECT
						[t1].[ParentID],
						[t1].[ChildID]
					FROM
						[Child] [t1]
				) [c_2]
			ORDER BY
				[c_2].[ParentID]
			OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY 
		) [t2] ON [t2].[ParentID] = [x].[ParentID]
ORDER BY
	[x].[ParentID]

