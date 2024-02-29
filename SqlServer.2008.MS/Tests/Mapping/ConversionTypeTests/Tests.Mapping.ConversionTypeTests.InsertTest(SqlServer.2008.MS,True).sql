﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TrimTestTable]', N'U') IS NOT NULL)
	DROP TABLE [TrimTestTable]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TrimTestTable]', N'U') IS NULL)
	CREATE TABLE [TrimTestTable]
	(
		[ID]   Int          NOT NULL,
		[Data] NVarChar(50)     NULL,

		CONSTRAINT [PK_TrimTestTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	1,
	N'***OOO***'
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TrimTestTable]', N'U') IS NOT NULL)
	DROP TABLE [TrimTestTable]

