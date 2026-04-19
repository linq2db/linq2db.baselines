-- SqlServer.SA.MS SqlServer.2019

UPDATE
	[a_Parent]
SET
	[a_Parent].[Value] = [a_Parent].[Value] * 10
FROM
	[ChildTable] [c_1]
		INNER JOIN [ParentTable] [a_Parent] ON [c_1].[ParentId] = [a_Parent].[Id]
WHERE
	[a_Parent].[Id] = 2

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[p].[Id],
	[p].[Value]
FROM
	[ParentTable] [p]
WHERE
	[p].[Id] = 2

