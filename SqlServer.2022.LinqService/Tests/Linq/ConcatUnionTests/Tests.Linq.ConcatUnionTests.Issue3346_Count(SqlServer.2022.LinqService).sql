BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [ComplexPerson]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[ComplexPerson]', N'U') IS NULL)
	CREATE TABLE [ComplexPerson]
	(
		[Id]        Int            NOT NULL,
		[FirstName] NVarChar(4000)     NULL,
		[LastName]  NVarChar(4000)     NULL,

		CONSTRAINT [PK_ComplexPerson] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022

SELECT
	COUNT(*)
FROM
	(
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
	) [t1]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [ComplexPerson]

