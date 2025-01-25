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
SELECT 1,N'***XXX***' UNION ALL
SELECT 2,N'***HHH***' UNION ALL
SELECT 3,N'***VVV***'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

UPDATE
	[TrimTestTable]
SET
	[Data] = N'***III***'
WHERE
	[TrimTestTable].[ID] = 3

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

UPDATE
	[TrimTestTable]
SET
	[Data] = N'***OOO***'
WHERE
	[TrimTestTable].[Data] = N'***XXX***'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

UPDATE
	[TrimTestTable]
SET
	[Data] = N'***SSS***'
WHERE
	[TrimTestTable].[Data] = N'***HHH***'

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

