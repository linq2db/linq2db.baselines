BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TrimTestTable]', N'U') IS NOT NULL)
	DROP TABLE [TrimTestTable]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TrimTestTable]', N'U') IS NULL)
	CREATE TABLE [TrimTestTable]
	(
		[ID]   Int          NOT NULL,
		[Data] NVarChar(50)     NULL,

		CONSTRAINT [PK_TrimTestTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2008

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	1,
	N'***XXX***'
)

BeforeExecute
-- SqlServer.2008

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	2,
	N'***HHH***'
)

BeforeExecute
-- SqlServer.2008

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	3,
	N'***VVV***'
)

BeforeExecute
-- SqlServer.2008

UPDATE
	[t1]
SET
	[t1].[Data] = N'***III***'
FROM
	[TrimTestTable] [t1]
WHERE
	[t1].[ID] = 3

BeforeExecute
-- SqlServer.2008

UPDATE
	[t]
SET
	[t].[Data] = N'***OOO***'
FROM
	[TrimTestTable] [t]
WHERE
	[t].[Data] = N'***XXX***'

BeforeExecute
-- SqlServer.2008

UPDATE
	[t]
SET
	[t].[Data] = N'***SSS***'
FROM
	[TrimTestTable] [t]
WHERE
	[t].[Data] = N'***HHH***'

BeforeExecute
-- SqlServer.2008

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlServer.2008

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TrimTestTable]', N'U') IS NOT NULL)
	DROP TABLE [TrimTestTable]

