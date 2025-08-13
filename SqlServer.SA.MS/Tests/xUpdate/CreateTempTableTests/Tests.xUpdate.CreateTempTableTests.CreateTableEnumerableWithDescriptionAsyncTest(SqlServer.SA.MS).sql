BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[Name] NVarChar(20) NOT NULL
	)

BeforeExecute
INSERT ASYNC BULK [TempTable](Name)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON [p].[FirstName] = [t].[Name]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

DROP TABLE IF EXISTS [TempTable]

