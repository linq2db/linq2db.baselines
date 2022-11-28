BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[key_data_result].[ParentID],
	[detail].[ChildID],
	[detail].[ParentID]
FROM
	(
		SELECT DISTINCT
			[_].[ParentID]
		FROM
			[Parent] [_]
	) [key_data_result]
		INNER JOIN [Child] [detail] ON Convert(BigInt, [key_data_result].[ParentID]) = [detail].[ParentID]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[_].[ParentID]
FROM
	[Parent] [_]

