BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [StackOverflowTable1]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[StackOverflowTable1]', N'U') IS NULL)
	CREATE TABLE [StackOverflowTable1]
	(
		[Id] Int NOT NULL,
		[FK] Int NOT NULL,

		CONSTRAINT [PK_StackOverflowTable1] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [StackOverflowTable2]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[StackOverflowTable2]', N'U') IS NULL)
	CREATE TABLE [StackOverflowTable2]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_StackOverflowTable2] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [StackOverflowTable3]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[StackOverflowTable3]', N'U') IS NULL)
	CREATE TABLE [StackOverflowTable3]
	(
		[Id]     Int NOT NULL,
		[Value2] Int NOT NULL,
		[Value]  Int NOT NULL,

		CONSTRAINT [PK_StackOverflowTable3] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [StackOverflowTable4]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[StackOverflowTable4]', N'U') IS NULL)
	CREATE TABLE [StackOverflowTable4]
	(
		[Id]    Int NOT NULL,
		[Value] Int     NULL,

		CONSTRAINT [PK_StackOverflowTable4] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [StackOverflowTable5]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[StackOverflowTable5]', N'U') IS NULL)
	CREATE TABLE [StackOverflowTable5]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL,

		CONSTRAINT [PK_StackOverflowTable5] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2016

WITH [cte] ([Id])
AS
(
	SELECT
		[a_Table2].[Id]
	FROM
		[StackOverflowTable1] [s]
			INNER JOIN [StackOverflowTable2] [a_Table2] ON [s].[FK] = [a_Table2].[Id]
	UNION ALL
	SELECT
		[r3].[Value]
	FROM
		[cte] [t1]
			INNER JOIN [StackOverflowTable3] [r3] ON [t1].[Id] = [r3].[Value2]
)
SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Value]
FROM
	(
		SELECT DISTINCT
			[t2].[Id]
		FROM
			[cte] [t2]
				LEFT JOIN [StackOverflowTable4] [r3_1] ON [t2].[Id] = [r3_1].[Id]
		WHERE
			[r3_1].[Value] IS NOT NULL
	) [m_1]
		INNER JOIN [StackOverflowTable5] [d] ON [d].[Value] = [m_1].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2016

WITH [cte] ([Id])
AS
(
	SELECT
		[a_Table2].[Id]
	FROM
		[StackOverflowTable1] [s]
			INNER JOIN [StackOverflowTable2] [a_Table2] ON [s].[FK] = [a_Table2].[Id]
	UNION ALL
	SELECT
		[r3].[Value]
	FROM
		[cte] [t1]
			INNER JOIN [StackOverflowTable3] [r3] ON [t1].[Id] = [r3].[Value2]
)
SELECT
	[t2].[Id]
FROM
	[cte] [t2]
		LEFT JOIN [StackOverflowTable4] [r3_1] ON [t2].[Id] = [r3_1].[Id]
WHERE
	[r3_1].[Value] IS NOT NULL

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [StackOverflowTable5]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [StackOverflowTable4]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [StackOverflowTable3]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [StackOverflowTable2]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [StackOverflowTable1]

