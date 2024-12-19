BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TrimTestTable]', N'U') IS NOT NULL)
	DROP TABLE [TrimTestTable]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TrimTestTable]', N'U') IS NULL)
	CREATE TABLE [TrimTestTable]
	(
		[ID]   Int          NOT NULL,
		[Data] NVarChar(50)     NULL,

		CONSTRAINT [PK_TrimTestTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
SELECT 1,N'***OOO***'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
OUTPUT
	INSERTED.[ID],
	INSERTED.[Data]
SELECT
	[t1].[ID] + 1,
	N'***HHH***'
FROM
	[TrimTestTable] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TrimTestTable]', N'U') IS NOT NULL)
	DROP TABLE [TrimTestTable]

