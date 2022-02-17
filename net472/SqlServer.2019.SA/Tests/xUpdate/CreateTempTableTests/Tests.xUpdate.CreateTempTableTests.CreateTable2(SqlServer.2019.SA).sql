﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

