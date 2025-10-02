BeforeExecute
-- SqlServer.2014 (asynchronously)

IF (OBJECT_ID(N'[tempdb]..[#TempTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TempTable]

BeforeExecute
-- SqlServer.2014 (asynchronously)

IF (OBJECT_ID(N'[tempdb]..[#TempTable]', N'U') IS NULL)
	CREATE TABLE [tempdb]..[#TempTable]
	(
		[Name] NVarChar(20) NOT NULL,

		PRIMARY KEY CLUSTERED ([Name])
	)

BeforeExecute
INSERT ASYNC BULK [tempdb]..[#TempTable](Name)

BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#TempTable] [t] ON [p].[FirstName] = [t].[Name]

BeforeExecute
-- SqlServer.2014 (asynchronously)

IF (OBJECT_ID(N'[tempdb]..[#TempTable]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TempTable]

