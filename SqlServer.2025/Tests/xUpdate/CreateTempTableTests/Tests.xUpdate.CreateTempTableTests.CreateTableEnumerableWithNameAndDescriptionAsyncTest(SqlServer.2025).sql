BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

DROP TABLE IF EXISTS [tempdb]..[#TempTable]

BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

IF (OBJECT_ID(N'[tempdb]..[#TempTable]', N'U') IS NULL)
	CREATE TABLE [tempdb]..[#TempTable]
	(
		[Name] NVarChar(20) NOT NULL
	)

BeforeExecute
INSERT ASYNC BULK [tempdb]..[#TempTable](Name)

BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [tempdb]..[#TempTable] [t] ON [p].[FirstName] = [t].[Name]

BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

DROP TABLE IF EXISTS [tempdb]..[#TempTable]

