BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Properties]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Properties]', N'U') IS NULL)
	CREATE TABLE [Properties]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Properties] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [CaseLog]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[CaseLog]', N'U') IS NULL)
	CREATE TABLE [CaseLog]
	(
		[Id]     Int NOT NULL,
		[Number] Int     NULL,

		CONSTRAINT [PK_CaseLog] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [CaseLogProperty]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[CaseLogProperty]', N'U') IS NULL)
	CREATE TABLE [CaseLogProperty]
	(
		[PropertyId] Int     NULL,
		[CaseLogId]  Int     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Incident]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Incident]', N'U') IS NULL)
	CREATE TABLE [Incident]
	(
		[Id]          Int NOT NULL,
		[EventNumber] Int     NULL,

		CONSTRAINT [PK_Incident] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [IncidentProperty]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[IncidentProperty]', N'U') IS NULL)
	CREATE TABLE [IncidentProperty]
	(
		[PropertyId] Int     NULL,
		[IncidentId] Int     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	(
		SELECT TOP (1)
			[a_CaseLog].[Number]
		FROM
			[CaseLogProperty] [a_CaseLogProperties]
				LEFT JOIN [CaseLog] [a_CaseLog] ON [a_CaseLogProperties].[CaseLogId] = [a_CaseLog].[Id]
		WHERE
			[x].[Id] = [a_CaseLogProperties].[PropertyId]
	),
	(
		SELECT TOP (1)
			[a_Incident].[EventNumber]
		FROM
			[IncidentProperty] [a_IncidentProperties]
				LEFT JOIN [Incident] [a_Incident] ON [a_IncidentProperties].[IncidentId] = [a_Incident].[Id]
		WHERE
			[x].[Id] = [a_IncidentProperties].[PropertyId]
	)
FROM
	[Properties] [x]
WHERE
	[x].[Id] IN (1, 2)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [IncidentProperty]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Incident]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [CaseLogProperty]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [CaseLog]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Properties]

