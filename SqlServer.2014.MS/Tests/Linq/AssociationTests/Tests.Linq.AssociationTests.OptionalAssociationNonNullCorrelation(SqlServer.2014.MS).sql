BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Table1]', N'U') IS NOT NULL)
	DROP TABLE [Table1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Table1]', N'U') IS NULL)
	CREATE TABLE [Table1]
	(
		[ID]  Int NOT NULL,
		[ID2] Int     NULL,

		CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [Table1]
(
	[ID],
	[ID2]
)
VALUES
(1,1),
(2,2)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Table2]', N'U') IS NOT NULL)
	DROP TABLE [Table2]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Table2]', N'U') IS NULL)
	CREATE TABLE [Table2]
	(
		[ID]  Int NOT NULL,
		[ID3] Int     NULL,

		CONSTRAINT [PK_Table2] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [Table2]
(
	[ID],
	[ID3]
)
VALUES
(1,1)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Table3]', N'U') IS NOT NULL)
	DROP TABLE [Table3]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Table3]', N'U') IS NULL)
	CREATE TABLE [Table3]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_Table3] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [Table3]
(
	[ID]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Table4]', N'U') IS NOT NULL)
	DROP TABLE [Table4]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Table4]', N'U') IS NULL)
	CREATE TABLE [Table4]
	(
		[ID]  Int NOT NULL,
		[ID3] Int     NULL,

		CONSTRAINT [PK_Table4] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [Table4]
(
	[ID],
	[ID3]
)
VALUES
(1,1),
(2,NULL)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[m_1].[ID],
	[d].[ID],
	[d].[ID3]
FROM
	(
		SELECT DISTINCT
			[a_Table3].[ID]
		FROM
			[Table1] [r]
				LEFT JOIN [Table2] [a_Table2] ON [r].[ID2] = [a_Table2].[ID]
				LEFT JOIN [Table3] [a_Table3] ON [a_Table2].[ID3] = [a_Table3].[ID]
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					[Table4] [id]
				WHERE
					[a_Table3].[ID] = [id].[ID3] AND [id].[ID] = [r].[ID]
			)
	) [m_1]
		INNER JOIN [Table4] [d] ON [m_1].[ID] = [d].[ID3] OR [m_1].[ID] IS NULL AND [d].[ID3] IS NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[r].[ID],
	[r].[ID2],
	[a_Table2].[ID],
	[a_Table2].[ID3],
	[a_Table3].[ID]
FROM
	[Table1] [r]
		LEFT JOIN [Table2] [a_Table2] ON [r].[ID2] = [a_Table2].[ID]
		LEFT JOIN [Table3] [a_Table3] ON [a_Table2].[ID3] = [a_Table3].[ID]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Table4] [id]
		WHERE
			[a_Table3].[ID] = [id].[ID3] AND [id].[ID] = [r].[ID]
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[m_1].[cond],
	[d].[ID],
	[d].[ID3]
FROM
	(
		SELECT DISTINCT
			[a_Table3].[ID] as [cond]
		FROM
			[Table1] [t1]
				LEFT JOIN [Table2] [a_Table2] ON [t1].[ID2] = [a_Table2].[ID]
				LEFT JOIN [Table3] [a_Table3] ON [a_Table2].[ID3] = [a_Table3].[ID]
	) [m_1]
		INNER JOIN [Table4] [d] ON [m_1].[cond] = [d].[ID3] OR [m_1].[cond] IS NULL AND [d].[ID3] IS NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[ID],
	[t1].[ID2],
	[a_Table2].[ID],
	[a_Table2].[ID3],
	[a_Table3].[ID]
FROM
	[Table1] [t1]
		LEFT JOIN [Table2] [a_Table2] ON [t1].[ID2] = [a_Table2].[ID]
		LEFT JOIN [Table3] [a_Table3] ON [a_Table2].[ID3] = [a_Table3].[ID]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Table4]', N'U') IS NOT NULL)
	DROP TABLE [Table4]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Table3]', N'U') IS NOT NULL)
	DROP TABLE [Table3]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Table2]', N'U') IS NOT NULL)
	DROP TABLE [Table2]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Table1]', N'U') IS NOT NULL)
	DROP TABLE [Table1]

