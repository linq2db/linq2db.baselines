BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

DROP TABLE IF EXISTS [tempdb]..[#TempTable]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

IF (OBJECT_ID(N'[tempdb]..[#TempTable]', N'U') IS NULL)
	CREATE TABLE [tempdb]..[#TempTable]
	(
		[Name] NVarChar(20) NOT NULL
	)

BeforeExecute
INSERT ASYNC BULK [tempdb]..[#TempTable](Name)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#TempTable] [t] ON [p].[FirstName] = [t].[Name]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

DROP TABLE IF EXISTS [tempdb]..[#TempTable]

