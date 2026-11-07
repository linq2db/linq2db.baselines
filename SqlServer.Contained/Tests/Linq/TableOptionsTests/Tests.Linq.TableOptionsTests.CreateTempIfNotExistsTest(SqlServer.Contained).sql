-- SqlServer.Contained SqlServer.2025
DROP TABLE IF EXISTS [CreateIfNotExistsTable]

-- SqlServer.Contained SqlServer.2025
CREATE TABLE [tempdb]..[#CreateIfNotExistsTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

-- SqlServer.Contained SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[#CreateIfNotExistsTable] [t1]

-- SqlServer.Contained SqlServer.2025
IF (OBJECT_ID(N'[CreateIfNotExistsTable]', N'U') IS NULL)
	CREATE TABLE [CreateIfNotExistsTable]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

-- SqlServer.Contained SqlServer.2025
DROP TABLE IF EXISTS [CreateIfNotExistsTable]

-- SqlServer.Contained SqlServer.2025
DROP TABLE IF EXISTS [tempdb]..[#CreateIfNotExistsTable]

