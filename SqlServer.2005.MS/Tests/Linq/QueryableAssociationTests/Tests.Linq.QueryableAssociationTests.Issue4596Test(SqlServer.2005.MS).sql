﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4596Form]', N'U') IS NOT NULL)
	DROP TABLE [Issue4596Form]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4596Form]', N'U') IS NULL)
	CREATE TABLE [Issue4596Form]
	(
		[Id] Int      NOT NULL,
		[C1] NChar(1) NOT NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4596Item]', N'U') IS NOT NULL)
	DROP TABLE [Issue4596Item]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_1].[Id],
	[m_1].[cond],
	[m_1].[cond_1],
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
			CASE
				WHEN [t1].[C1] = N'T' THEN 1
				ELSE 0
			END as [cond],
			CASE
				WHEN [t1].[C1] <> N'T' THEN 1
				ELSE 0
			END as [cond_1]
		FROM
			[Issue4596Form] [t1]
	) [m_1],
	[Issue4596Item] [d]
WHERE
	[d].[FormId] = [m_1].[Id]
ORDER BY
	CASE
		WHEN [m_1].[cond] = 1 THEN [d].[OrderIndex]
		ELSE 0
	END,
	CASE
		WHEN [m_1].[cond_1] = 1 THEN [d].[Name1]
		ELSE N''
	END,
	CASE
		WHEN [m_1].[cond_1] = 1 THEN [d].[Name2]
		ELSE N''
	END,
	CASE
		WHEN [m_1].[cond_1] = 1 THEN [d].[Name3]
		ELSE N''
	END

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	[t1].[Id],
	[t1].[C1],
	CASE
		WHEN [t1].[C1] = N'T' THEN 1
		ELSE 0
	END,
	CASE
		WHEN [t1].[C1] <> N'T' THEN 1
		ELSE 0
	END
FROM
	[Issue4596Form] [t1]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4596Item]', N'U') IS NOT NULL)
	DROP TABLE [Issue4596Item]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue4596Form]', N'U') IS NOT NULL)
	DROP TABLE [Issue4596Form]

