﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [TrimTestTable]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[TrimTestTable]', N'U') IS NULL)
	CREATE TABLE [TrimTestTable]
	(
		[ID]   Int          NOT NULL,
		[Data] NVarChar(50)     NULL,

		CONSTRAINT [PK_TrimTestTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(1,N'***OOO***')

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Data NVarChar(50) -- String
SET     @Data = N'***HHH***'

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
OUTPUT
	[INSERTED].[ID],
	[INSERTED].[Data]
SELECT
	[t1].[ID] + 1,
	@Data
FROM
	[TrimTestTable] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [TrimTestTable]

