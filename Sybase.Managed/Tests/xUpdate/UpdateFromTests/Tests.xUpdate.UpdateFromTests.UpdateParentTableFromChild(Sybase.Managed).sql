-- Sybase.Managed Sybase

UPDATE
	[ParentTable]
SET
	[Value] = [ParentTable].[Value] * 10
FROM
	[ChildTable] [c_1]
WHERE
	[ParentTable].[Id] = 2 AND [c_1].[ParentId] = [ParentTable].[Id]

-- Sybase.Managed Sybase

SELECT TOP 1
	[p].[Id],
	[p].[Value]
FROM
	[ParentTable] [p]
WHERE
	[p].[Id] = 2

