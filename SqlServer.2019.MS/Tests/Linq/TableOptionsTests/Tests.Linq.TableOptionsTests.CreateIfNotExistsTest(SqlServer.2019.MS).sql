-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[CreateIfNotExistsTable]', N'U') IS NULL)
	CREATE TABLE [CreateIfNotExistsTable]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

-- SqlServer.2019.MS SqlServer.2019

INSERT INTO [CreateIfNotExistsTable]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	2
)

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[CreateIfNotExistsTable] [t1]

-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[CreateIfNotExistsTable]', N'U') IS NULL)
	CREATE TABLE [CreateIfNotExistsTable]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

