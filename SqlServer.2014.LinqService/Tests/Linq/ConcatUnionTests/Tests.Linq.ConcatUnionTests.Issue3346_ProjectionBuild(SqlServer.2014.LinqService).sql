BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[ComplexPerson]', N'U') IS NOT NULL)
	DROP TABLE [ComplexPerson]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[ComplexPerson]', N'U') IS NULL)
	CREATE TABLE [ComplexPerson]
	(
		[Id]        Int            NOT NULL,
		[FirstName] NVarChar(4000)     NULL,
		[LastName]  NVarChar(4000)     NULL,

		CONSTRAINT [PK_ComplexPerson] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014

SELECT
	[x].[Id],
	[x].[FirstName],
	[x].[LastName]
FROM
	[ComplexPerson] [x]
WHERE
	[x].[Id] < 10
UNION
SELECT
	[x_1].[Id],
	[x_1].[FirstName],
	[x_1].[LastName]
FROM
	[ComplexPerson] [x_1]
WHERE
	[x_1].[Id] < 20

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[ComplexPerson]', N'U') IS NOT NULL)
	DROP TABLE [ComplexPerson]

