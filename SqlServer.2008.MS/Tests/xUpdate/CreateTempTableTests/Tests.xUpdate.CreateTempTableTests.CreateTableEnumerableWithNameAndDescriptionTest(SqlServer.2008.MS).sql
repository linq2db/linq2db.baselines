BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TempTable]', N'U') IS NOT NULL)
	DROP TABLE [TempTable]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[Name] NVarChar(20) NOT NULL
	)

BeforeExecute
INSERT BULK [TempTable](Name)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON [p].[FirstName] = [t].[Name]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TempTable]', N'U') IS NOT NULL)
	DROP TABLE [TempTable]

