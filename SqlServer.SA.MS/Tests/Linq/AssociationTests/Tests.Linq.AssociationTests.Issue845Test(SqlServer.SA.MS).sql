﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[e].[Id],
	[a_Department].[Name]
FROM
	[Employee] [e]
		LEFT JOIN [Department] [a_Department] ON [e].[DepartmentId] = [a_Department].[DepartmentId] AND [a_Department].[Deleted] = 0

