BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Issue4596Form]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Issue4596Form]', N'U') IS NULL)
	CREATE TABLE [Issue4596Form]
	(
		[Id] Int      NOT NULL,
		[C1] NChar(1) NOT NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Issue4596Item]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Issue4596Item]', N'U') IS NULL)
	CREATE TABLE [Issue4596Item]
	(
		[Id]         Int            NOT NULL,
		[FormId]     Int            NOT NULL,
		[OrderIndex] Int            NOT NULL,
		[Name1]      NVarChar(4000)     NULL,
		[Name2]      NVarChar(4000)     NULL,
		[Name3]      NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[m_1].[Id],
	[m_1].[c1],
	[m_1].[c2],
	[d].[Id],
	[d].[FormId],
	[d].[OrderIndex],
	[d].[Name1],
	[d].[Name2],
	[d].[Name3]
FROM
	(
		SELECT TOP (1)
			[t1].[Id],
			IIF([t1].[C1] = N'T', 1, 0) as [c1],
			IIF([t1].[C1] <> N'T', 1, 0) as [c2]
		FROM
			[Issue4596Form] [t1]
	) [m_1],
	[Issue4596Item] [d]
WHERE
	[d].[FormId] = [m_1].[Id]
ORDER BY
	IIF([m_1].[c1] = 1, [d].[OrderIndex], 0),
	IIF([m_1].[c2] = 1, [d].[Name1], N''),
	IIF([m_1].[c2] = 1, [d].[Name2], N''),
	IIF([m_1].[c2] = 1, [d].[Name3], N'')

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (1)
	[t1].[Id],
	[t1].[C1],
	IIF([t1].[C1] = N'T', 1, 0),
	IIF([t1].[C1] <> N'T', 1, 0)
FROM
	[Issue4596Form] [t1]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Issue4596Item]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Issue4596Form]

