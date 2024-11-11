BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Table1]', N'U') IS NOT NULL)
	DROP TABLE [Table1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Table1]', N'U') IS NULL)
	CREATE TABLE [Table1]
	(
		[ID]  Int NOT NULL,
		[ID2] Int     NULL,

		CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [Table1]
(
	[ID],
	[ID2]
)
VALUES
(1,1),
(2,2)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Table2]', N'U') IS NOT NULL)
	DROP TABLE [Table2]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Table2]', N'U') IS NULL)
	CREATE TABLE [Table2]
	(
		[ID]  Int NOT NULL,
		[ID3] Int     NULL,

		CONSTRAINT [PK_Table2] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [Table2]
(
	[ID],
	[ID3]
)
VALUES
(1,1)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Table3]', N'U') IS NOT NULL)
	DROP TABLE [Table3]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Table3]', N'U') IS NULL)
	CREATE TABLE [Table3]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_Table3] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [Table3]
(
	[ID]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Table4]', N'U') IS NOT NULL)
	DROP TABLE [Table4]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Table4]', N'U') IS NULL)
	CREATE TABLE [Table4]
	(
		[ID]  Int NOT NULL,
		[ID3] Int     NULL,

		CONSTRAINT [PK_Table4] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [Table4]
(
	[ID],
	[ID3]
)
VALUES
(1,1),
(2,NULL)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[a_Table2].[ID],
	[a_Table2].[ID3],
	CASE
		WHEN [a_Table2].[ID] IS NOT NULL AND [a_Table3].[ID] IS NOT NULL
			THEN 1
		ELSE 0
	END,
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
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Table4]', N'U') IS NOT NULL)
	DROP TABLE [Table4]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Table3]', N'U') IS NOT NULL)
	DROP TABLE [Table3]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Table2]', N'U') IS NOT NULL)
	DROP TABLE [Table2]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Table1]', N'U') IS NOT NULL)
	DROP TABLE [Table1]

