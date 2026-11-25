-- SqlServer.2017.MS SqlServer.2017
SELECT
	[c_1].[ChildID],
	CASE
		WHEN [n_1].[c1] IS NULL THEN NULL
		WHEN [n_1].[B] IS NULL THEN [c_1].[ParentID]
		ELSE NULL
	END
FROM
	[Child] [c_1]
		LEFT JOIN (
			SELECT
				[n].[B],
				[n].[A],
				1 as [c1]
			FROM
				[NullableOnlyRow] [n]
		) [n_1] ON [n_1].[A] >= [c_1].[ChildID] AND [n_1].[A] <= [c_1].[ChildID]
WHERE
	[c_1].[ChildID] = 11 OR [c_1].[ChildID] = 21 OR [c_1].[ChildID] = 22

