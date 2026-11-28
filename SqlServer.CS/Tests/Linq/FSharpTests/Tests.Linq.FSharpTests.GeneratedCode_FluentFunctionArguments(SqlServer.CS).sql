-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[GetParentByID](1) [t1]

-- SqlServer.CS SqlServer.2025
SELECT
	[dbo].[ScalarFunction](7)

-- SqlServer.CS SqlServer.2025
SELECT
	[dbo].[ScalarFunction]([p].[Value1])
FROM
	[Parent] [p]

-- SqlServer.CS SqlServer.2025
SELECT
	[dbo].[ScalarFunction]([arg3].[Value1])
FROM
	[Parent] [tupledArg]
		CROSS APPLY [GetParentByID]([tupledArg].[ParentID]) [arg3]

