BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[c_1].[ParentID],
	[c_1].[Value1]
FROM
	[Parent] [c_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
		WHERE
			[p].[Value1] = 1
	)

