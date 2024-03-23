BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [BaseTable]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[BaseTable]', N'U') IS NULL)
	CREATE TABLE [BaseTable]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL,

		CONSTRAINT [PK_BaseTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016

INSERT INTO [BaseTable]
(
	[Id],
	[Value]
)
VALUES
(1,100)

BeforeExecute
-- SqlServer.2016

SELECT TOP (1)
	[x].[Id],
	[x].[Value]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1

BeforeExecute
-- SqlServer.2016

SELECT TOP (1)
	[x].[Id],
	[x].[Value]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1 AND [x].[Value] = 100

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [BaseTable]

