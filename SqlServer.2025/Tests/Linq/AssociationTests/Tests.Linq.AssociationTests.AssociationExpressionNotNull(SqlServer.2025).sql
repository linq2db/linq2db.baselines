-- SqlServer.2025 SqlServer.2022

SELECT
	[a_ChildInner].[ParentID]
FROM
	[NotNullParent] [p]
		INNER JOIN [NotNullChild] [a_ChildInner] ON [p].[ID] = [a_ChildInner].[ParentID]

