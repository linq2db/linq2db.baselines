BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Properties]', N'U') IS NOT NULL)
	DROP TABLE [Properties]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Properties]', N'U') IS NULL)
	CREATE TABLE [Properties]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Properties] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[CaseLog]', N'U') IS NOT NULL)
	DROP TABLE [CaseLog]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[CaseLog]', N'U') IS NULL)
	CREATE TABLE [CaseLog]
	(
		[Id]     Int NOT NULL,
		[Number] Int     NULL,

		CONSTRAINT [PK_CaseLog] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[CaseLogProperty]', N'U') IS NOT NULL)
	DROP TABLE [CaseLogProperty]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[CaseLogProperty]', N'U') IS NULL)
	CREATE TABLE [CaseLogProperty]
	(
		[PropertyId] Int     NULL,
		[CaseLogId]  Int     NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Incident]', N'U') IS NOT NULL)
	DROP TABLE [Incident]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Incident]', N'U') IS NULL)
	CREATE TABLE [Incident]
	(
		[Id]          Int NOT NULL,
		[EventNumber] Int     NULL,

		CONSTRAINT [PK_Incident] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[IncidentProperty]', N'U') IS NOT NULL)
	DROP TABLE [IncidentProperty]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[IncidentProperty]', N'U') IS NULL)
	CREATE TABLE [IncidentProperty]
	(
		[PropertyId] Int     NULL,
		[IncidentId] Int     NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	(
		SELECT TOP (1)
			[a_CaseLog].[Number]
		FROM
			[CaseLogProperty] [a_CaseLogProperties]
				LEFT JOIN [CaseLog] [a_CaseLog] ON [a_CaseLogProperties].[CaseLogId] = [a_CaseLog].[Id] AND [a_CaseLogProperties].[CaseLogId] IS NOT NULL
		WHERE
			[x].[Id] = [a_CaseLogProperties].[PropertyId] AND [a_CaseLogProperties].[PropertyId] IS NOT NULL
	),
	(
		SELECT TOP (1)
			[a_Incident].[EventNumber]
		FROM
			[IncidentProperty] [a_IncidentProperties]
				LEFT JOIN [Incident] [a_Incident] ON [a_IncidentProperties].[IncidentId] = [a_Incident].[Id] AND [a_IncidentProperties].[IncidentId] IS NOT NULL
		WHERE
			[x].[Id] = [a_IncidentProperties].[PropertyId] AND
			[a_IncidentProperties].[PropertyId] IS NOT NULL
	)
FROM
	[Properties] [x]
WHERE
	[x].[Id] IN (1, 2)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[IncidentProperty]', N'U') IS NOT NULL)
	DROP TABLE [IncidentProperty]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Incident]', N'U') IS NOT NULL)
	DROP TABLE [Incident]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[CaseLogProperty]', N'U') IS NOT NULL)
	DROP TABLE [CaseLogProperty]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[CaseLog]', N'U') IS NOT NULL)
	DROP TABLE [CaseLog]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Properties]', N'U') IS NOT NULL)
	DROP TABLE [Properties]

