BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[key_data_result].[ChildID],
	[detail].[ParentID],
	[detail].[ChildID],
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	(
		SELECT DISTINCT
			[s].[ChildID]
		FROM
			[Child] [s]
		WHERE
			(
				SELECT TOP (@take)
					1
				FROM
					[Child] [c_1]
				WHERE
					[c_1].[ChildID] = [s].[ChildID]
			) IS NOT NULL
	) [key_data_result]
		INNER JOIN [Child] [detail] ON [detail].[ChildID] = [key_data_result].[ChildID]
		LEFT JOIN [Parent] [a_Parent] ON [detail].[ParentID] = [a_Parent].[ParentID]

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[s].[ChildID]
FROM
	[Child] [s]
WHERE
	(
		SELECT TOP (@take)
			1
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ChildID] = [s].[ChildID]
	) IS NOT NULL

