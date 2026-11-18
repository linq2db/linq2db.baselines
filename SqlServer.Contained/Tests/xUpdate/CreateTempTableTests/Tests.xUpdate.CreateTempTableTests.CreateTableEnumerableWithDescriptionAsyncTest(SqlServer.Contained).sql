-- SqlServer.Contained SqlServer.2025
DROP TABLE IF EXISTS [TempTable]

-- SqlServer.Contained SqlServer.2025
IF (OBJECT_ID(N'[TempTable]', N'U') IS NULL)
	CREATE TABLE [TempTable]
	(
		[Name] NVarChar(20) NOT NULL,

		CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([Name])
	)

INSERT ASYNC BULK [TempTable](Name)

-- SqlServer.Contained SqlServer.2025
SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON [p].[FirstName] = [t].[Name]

-- SqlServer.Contained SqlServer.2025
DROP TABLE IF EXISTS [TempTable]

