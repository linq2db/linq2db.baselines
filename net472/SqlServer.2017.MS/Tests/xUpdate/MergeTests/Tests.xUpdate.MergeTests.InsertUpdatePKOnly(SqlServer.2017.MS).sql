﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [PKOnlyTable]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[PKOnlyTable]', N'U') IS NULL)
	CREATE TABLE [PKOnlyTable]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_PKOnlyTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [PKOnlyTable]
(
	[ID]
)
VALUES
(2)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

MERGE INTO [PKOnlyTable] [Target]
USING (VALUES
	(1), (2), (3)
) [Source]
(
	[ID]
)
ON ([Target].[ID] = [Source].[ID])

WHEN NOT MATCHED THEN
INSERT
(
	[ID]
)
VALUES
(
	[Source].[ID]
)
;

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[ID]
FROM
	[PKOnlyTable] [t1]
ORDER BY
	[t1].[ID]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [PKOnlyTable]

