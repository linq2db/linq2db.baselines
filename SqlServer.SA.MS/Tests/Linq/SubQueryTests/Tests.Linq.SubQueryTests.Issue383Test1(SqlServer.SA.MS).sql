BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Contract_Distributor_Agent]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Contract_Distributor_Agent]', N'U') IS NULL)
	CREATE TABLE [Contract_Distributor_Agent]
	(
		[Agent_Id]                      Int            NOT NULL,
		[Distributor_Id]                Int            NOT NULL,
		[Contract_Id]                   Int            NOT NULL,
		[Distributor_Type_Code]         NVarChar(4000)     NULL,
		[Distributor_Agent_Type_Prefix] NVarChar(4000)     NULL,
		[Represents_Type_Prefix]        NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Contract_Distributor_Agent]
(
	[Agent_Id],
	[Distributor_Id],
	[Contract_Id],
	[Distributor_Type_Code],
	[Distributor_Agent_Type_Prefix],
	[Represents_Type_Prefix]
)
VALUES
(1,1,198827882,N'CC',N'OFFICE',N'REPRESENTS')

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Agent]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Agent]', N'U') IS NULL)
	CREATE TABLE [Agent]
	(
		[Agent_Id]   Int            NOT NULL,
		[First_Name] NVarChar(4000)     NULL,
		[Last_Name]  NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Agent]
(
	[Agent_Id],
	[First_Name],
	[Last_Name]
)
VALUES
(1,N'x',N'x')

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Distributor]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Distributor]', N'U') IS NULL)
	CREATE TABLE [Distributor]
	(
		[Distributor_Id]   Int            NOT NULL,
		[Type_Code]        NVarChar(4000)     NULL,
		[Distributor_Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Distributor]
(
	[Distributor_Id],
	[Type_Code],
	[Distributor_Name]
)
VALUES
(1,N'RE',N'x')

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Distributor_Commercial_Propert]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Distributor_Commercial_Propert]', N'U') IS NULL)
	CREATE TABLE [Distributor_Commercial_Propert]
	(
		[Distributor_Id]         Int            NOT NULL,
		[Commercial_Property_Id] Int            NOT NULL,
		[Distributor_Type_Code]  NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Distributor_Commercial_Propert]
(
	[Distributor_Id],
	[Commercial_Property_Id],
	[Distributor_Type_Code]
)
VALUES
(1,1,N'RE')

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Commercial_Property]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Commercial_Property]', N'U') IS NULL)
	CREATE TABLE [Commercial_Property]
	(
		[Commercial_Property_Id] Int           NOT NULL,
		[Street_Number]          NVarChar(100)     NULL,
		[Street_Name]            NVarChar(100)     NULL,
		[State]                  NVarChar(100)     NULL,
		[Zip_Code]               NVarChar(100)     NULL,
		[Zip_Plus_4]             NVarChar(100)     NULL,
		[City_Code]              NVarChar(100)     NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Commercial_Property]
(
	[Commercial_Property_Id],
	[Street_Number],
	[Street_Name],
	[State],
	[Zip_Code],
	[Zip_Plus_4],
	[City_Code]
)
VALUES
(1,N'x',N'x',N'x',N'x',N'x',N'x')

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Contract_Dates]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Contract_Dates]', N'U') IS NULL)
	CREATE TABLE [Contract_Dates]
	(
		[Contract_Id]    Int            NOT NULL,
		[Type_Code]      NVarChar(4000)     NULL,
		[Effective_Date] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Contract_Dates]
(
	[Contract_Id],
	[Type_Code],
	[Effective_Date]
)
VALUES
(198827882,N'ESTCOE',N'x')

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Cities]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Cities]', N'U') IS NULL)
	CREATE TABLE [Cities]
	(
		[City_Code] NVarChar(4000)     NULL,
		[City_Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Cities]
(
	[City_Code],
	[City_Name]
)
VALUES
(N'x',N'Urupinsk')

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[m_1].[City_Code],
	[d_1].[City_Name]
FROM
	(
		SELECT DISTINCT
			[cp].[City_Code]
		FROM
			[Contract_Distributor_Agent] [cda]
				INNER JOIN [Agent] [a] ON [cda].[Agent_Id] = [a].[Agent_Id]
				INNER JOIN [Distributor] [d] ON [cda].[Distributor_Id] = [d].[Distributor_Id]
				INNER JOIN [Distributor_Commercial_Propert] [dcp] ON [d].[Distributor_Id] = [dcp].[Distributor_Id]
				INNER JOIN [Commercial_Property] [cp] ON [dcp].[Commercial_Property_Id] = [cp].[Commercial_Property_Id]
				INNER JOIN [Contract_Dates] [cd] ON [cda].[Contract_Id] = [cd].[Contract_Id]
		WHERE
			[cda].[Contract_Id] = 198827882 AND
			[cda].[Distributor_Type_Code] = N'CC' AND
			[cda].[Distributor_Type_Code] IS NOT NULL AND
			[cda].[Distributor_Agent_Type_Prefix] = N'OFFICE' AND
			[cda].[Distributor_Agent_Type_Prefix] IS NOT NULL AND
			[cda].[Represents_Type_Prefix] = N'REPRESENTS' AND
			[cda].[Represents_Type_Prefix] IS NOT NULL AND
			[cd].[Type_Code] = N'ESTCOE' AND
			[cd].[Type_Code] IS NOT NULL AND
			[d].[Type_Code] = N'RE' AND
			[d].[Type_Code] IS NOT NULL AND
			[dcp].[Distributor_Type_Code] = N'RE' AND
			[dcp].[Distributor_Type_Code] IS NOT NULL
	) [m_1]
		INNER JOIN [Cities] [d_1] ON [d_1].[City_Code] = [m_1].[City_Code] AND [d_1].[City_Code] IS NOT NULL AND [m_1].[City_Code] IS NOT NULL OR [d_1].[City_Code] IS NULL AND [m_1].[City_Code] IS NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[a].[First_Name],
	[a].[Last_Name],
	[d].[Distributor_Name],
	[cp].[Street_Number],
	[cp].[Street_Name],
	[cp].[City_Code],
	[cp].[State],
	[cp].[Zip_Code],
	[cp].[Zip_Plus_4],
	[cd].[Effective_Date]
FROM
	[Contract_Distributor_Agent] [cda]
		INNER JOIN [Agent] [a] ON [cda].[Agent_Id] = [a].[Agent_Id]
		INNER JOIN [Distributor] [d] ON [cda].[Distributor_Id] = [d].[Distributor_Id]
		INNER JOIN [Distributor_Commercial_Propert] [dcp] ON [d].[Distributor_Id] = [dcp].[Distributor_Id]
		INNER JOIN [Commercial_Property] [cp] ON [dcp].[Commercial_Property_Id] = [cp].[Commercial_Property_Id]
		INNER JOIN [Contract_Dates] [cd] ON [cda].[Contract_Id] = [cd].[Contract_Id]
WHERE
	[cda].[Contract_Id] = 198827882 AND
	[cda].[Distributor_Type_Code] = N'CC' AND
	[cda].[Distributor_Type_Code] IS NOT NULL AND
	[cda].[Distributor_Agent_Type_Prefix] = N'OFFICE' AND
	[cda].[Distributor_Agent_Type_Prefix] IS NOT NULL AND
	[cda].[Represents_Type_Prefix] = N'REPRESENTS' AND
	[cda].[Represents_Type_Prefix] IS NOT NULL AND
	[cd].[Type_Code] = N'ESTCOE' AND
	[cd].[Type_Code] IS NOT NULL AND
	[d].[Type_Code] = N'RE' AND
	[d].[Type_Code] IS NOT NULL AND
	[dcp].[Distributor_Type_Code] = N'RE' AND
	[dcp].[Distributor_Type_Code] IS NOT NULL

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Cities]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Contract_Dates]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Commercial_Property]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Distributor_Commercial_Propert]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Distributor]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Agent]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Contract_Distributor_Agent]

