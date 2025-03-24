﻿BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[ID] Int NOT NULL
	)

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[TempTable] [t1]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON [p].[ParentID] = [t].[ID]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [TempTable]

