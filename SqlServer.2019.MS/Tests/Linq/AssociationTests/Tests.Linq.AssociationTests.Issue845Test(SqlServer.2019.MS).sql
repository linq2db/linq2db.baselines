﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Employee]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Employee]', N'U') IS NULL)
	CREATE TABLE [Employee]
	(
		[Id]           Int NOT NULL,
		[DepartmentId] Int     NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Department]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Department]', N'U') IS NULL)
	CREATE TABLE [Department]
	(
		[DepartmentId] Int            NOT NULL,
		[Name]         NVarChar(4000)     NULL,
		[Deleted]      Bit            NOT NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[e].[Id],
	[a_Department].[Name]
FROM
	[Employee] [e]
		LEFT JOIN [Department] [a_Department] ON [e].[DepartmentId] = [a_Department].[DepartmentId] AND [a_Department].[Deleted] = 0

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Department]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Employee]

