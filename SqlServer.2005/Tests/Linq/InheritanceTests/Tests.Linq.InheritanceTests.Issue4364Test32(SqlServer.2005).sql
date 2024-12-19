BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue4364_BaseThing]', N'U') IS NOT NULL)
	DROP TABLE [Issue4364_BaseThing]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue4364_BaseThing]', N'U') IS NULL)
	CREATE TABLE [Issue4364_BaseThing]
	(
		[Id]                Int NOT NULL,
		[Type]              Int NOT NULL,
		[BaseField]         Int NOT NULL,
		[ConcreteField]     Int     NULL,
		[IntermediateField] Int     NULL,

		CONSTRAINT [PK_Issue4364_BaseThing] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Issue4364_BaseThing]
(
	[Id],
	[Type],
	[BaseField],
	[ConcreteField],
	[IntermediateField]
)
SELECT 1,1,2,0,0 UNION ALL
SELECT 2,2,3,4,0 UNION ALL
SELECT 3,101,4,0,6 UNION ALL
SELECT 4,102,5,0,0

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue4364_Person]', N'U') IS NOT NULL)
	DROP TABLE [Issue4364_Person]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue4364_Person]', N'U') IS NULL)
	CREATE TABLE [Issue4364_Person]
	(
		[Id]       Int            NOT NULL,
		[FullName] NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_Issue4364_Person] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Issue4364_Person]
(
	[Id],
	[FullName]
)
SELECT 1,N'Person 1' UNION ALL
SELECT 2,N'Person 2' UNION ALL
SELECT 3,N'Person 3' UNION ALL
SELECT 4,N'Person 4' UNION ALL
SELECT 5,N'Person 5'

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue4364_Interaction]', N'U') IS NOT NULL)
	DROP TABLE [Issue4364_Interaction]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue4364_Interaction]', N'U') IS NULL)
	CREATE TABLE [Issue4364_Interaction]
	(
		[Id]       Int NOT NULL,
		[PersonId] Int NOT NULL,
		[ThingId]  Int NOT NULL,

		CONSTRAINT [PK_Issue4364_Interaction] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Issue4364_Interaction]
(
	[Id],
	[PersonId],
	[ThingId]
)
SELECT 1,2,3 UNION ALL
SELECT 2,3,4 UNION ALL
SELECT 3,4,1 UNION ALL
SELECT 4,1,2

BeforeExecute
-- SqlServer.2005

SELECT
	[b].[Type],
	[p].[FullName]
FROM
	[Issue4364_BaseThing] [b]
		INNER JOIN [Issue4364_Interaction] [i] ON [b].[Id] = [i].[ThingId]
		INNER JOIN [Issue4364_Person] [p] ON [i].[PersonId] = [p].[Id]
WHERE
	[b].[Type] IN (102, 101)
ORDER BY
	[b].[Id]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue4364_Interaction]', N'U') IS NOT NULL)
	DROP TABLE [Issue4364_Interaction]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue4364_Person]', N'U') IS NOT NULL)
	DROP TABLE [Issue4364_Person]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue4364_BaseThing]', N'U') IS NOT NULL)
	DROP TABLE [Issue4364_BaseThing]

