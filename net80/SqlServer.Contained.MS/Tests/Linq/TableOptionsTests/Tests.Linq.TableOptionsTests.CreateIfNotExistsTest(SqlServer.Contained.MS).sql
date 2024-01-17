BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[CreateIfNotExistsTable]', N'U') IS NULL)
	CREATE TABLE [CreateIfNotExistsTable]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[CreateIfNotExistsTable] [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[CreateIfNotExistsTable]', N'U') IS NULL)
	CREATE TABLE [CreateIfNotExistsTable]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

