BeforeExecute
-- SqlServer.2012

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
-- SqlServer.2012

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
-- SqlServer.2012

CREATE TABLE [Agent]
(
	[Agent_Id]   Int            NOT NULL,
	[First_Name] NVarChar(4000)     NULL,
	[Last_Name]  NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2012

INSERT INTO [Agent]
(
	[Agent_Id],
	[First_Name],
	[Last_Name]
)
VALUES
(1,N'x',N'x')

BeforeExecute
-- SqlServer.2012

CREATE TABLE [Distributor]
(
	[Distributor_Id]   Int            NOT NULL,
	[Type_Code]        NVarChar(4000)     NULL,
	[Distributor_Name] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2012

INSERT INTO [Distributor]
(
	[Distributor_Id],
	[Type_Code],
	[Distributor_Name]
)
VALUES
(1,N'RE',N'x')

BeforeExecute
-- SqlServer.2012

CREATE TABLE [Distributor_Commercial_Propert]
(
	[Distributor_Id]         Int            NOT NULL,
	[Commercial_Property_Id] Int            NOT NULL,
	[Distributor_Type_Code]  NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2012

INSERT INTO [Distributor_Commercial_Propert]
(
	[Distributor_Id],
	[Commercial_Property_Id],
	[Distributor_Type_Code]
)
VALUES
(1,1,N'RE')

BeforeExecute
-- SqlServer.2012

CREATE TABLE [Commercial_Property]
(
	[Commercial_Property_Id] Int            NOT NULL,
	[Street_Number]          NVarChar(4000)     NULL,
	[Street_Name]            NVarChar(4000)     NULL,
	[State]                  NVarChar(4000)     NULL,
	[Zip_Code]               NVarChar(4000)     NULL,
	[Zip_Plus_4]             NVarChar(4000)     NULL,
	[City_Code]              NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2012

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
-- SqlServer.2012

CREATE TABLE [Contract_Dates]
(
	[Contract_Id]    Int            NOT NULL,
	[Type_Code]      NVarChar(4000)     NULL,
	[Effective_Date] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2012

INSERT INTO [Contract_Dates]
(
	[Contract_Id],
	[Type_Code],
	[Effective_Date]
)
VALUES
(198827882,N'ESTCOE',N'x')

BeforeExecute
-- SqlServer.2012

CREATE TABLE [Cities]
(
	[City_Code] NVarChar(4000)     NULL,
	[City_Name] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2012

INSERT INTO [Cities]
(
	[City_Code],
	[City_Name]
)
VALUES
(N'x',N'Urupinsk')

BeforeExecute
-- SqlServer.2012

SELECT
	[key_data_result].[City_Code],
	[key_data_result].[Agent_Id],
	[key_data_result].[Distributor_Id],
	[key_data_result].[Contract_Id],
	[key_data_result].[Distributor_Type_Code],
	[key_data_result].[Distributor_Agent_Type_Prefix],
	[key_data_result].[Represents_Type_Prefix],
	[key_data_result].[Agent_Id_1],
	[key_data_result].[First_Name],
	[key_data_result].[Distributor_Id_1],
	[key_data_result].[Type_Code],
	[key_data_result].[Distributor_Name],
	[key_data_result].[Distributor_Id_2],
	[key_data_result].[Commercial_Property_Id],
	[key_data_result].[Distributor_Type_Code_1],
	[key_data_result].[Commercial_Property_Id_1],
	[key_data_result].[Street_Number],
	[key_data_result].[Street_Name],
	[key_data_result].[Zip_Code],
	[key_data_result].[Zip_Plus_4],
	[key_data_result].[Contract_Id_1],
	[key_data_result].[Type_Code_1],
	[key_data_result].[Effective_Date],
	[detail].[City_Name]
FROM
	(
		SELECT DISTINCT
			[cp].[City_Code],
			[cda].[Agent_Id],
			[cda].[Distributor_Id],
			[cda].[Contract_Id],
			[cda].[Distributor_Type_Code],
			[cda].[Distributor_Agent_Type_Prefix],
			[cda].[Represents_Type_Prefix],
			[a].[Agent_Id] as [Agent_Id_1],
			[a].[First_Name],
			[d].[Distributor_Id] as [Distributor_Id_1],
			[d].[Type_Code],
			[d].[Distributor_Name],
			[dcp].[Distributor_Id] as [Distributor_Id_2],
			[dcp].[Commercial_Property_Id],
			[dcp].[Distributor_Type_Code] as [Distributor_Type_Code_1],
			[cp].[Commercial_Property_Id] as [Commercial_Property_Id_1],
			[cp].[Street_Number],
			[cp].[Street_Name],
			[cp].[Zip_Code],
			[cp].[Zip_Plus_4],
			[cd].[Contract_Id] as [Contract_Id_1],
			[cd].[Type_Code] as [Type_Code_1],
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
			[cda].[Distributor_Agent_Type_Prefix] = N'OFFICE' AND
			[cda].[Represents_Type_Prefix] = N'REPRESENTS' AND
			[cd].[Type_Code] = N'ESTCOE' AND
			[d].[Type_Code] = N'RE' AND
			[dcp].[Distributor_Type_Code] = N'RE'
	) [key_data_result]
		INNER JOIN [Cities] [detail] ON ([detail].[City_Code] IS NULL AND [key_data_result].[City_Code] IS NULL OR [detail].[City_Code] = [key_data_result].[City_Code])

BeforeExecute
-- SqlServer.2012

SELECT
	[a].[First_Name],
	[a].[Last_Name],
	[d].[Distributor_Name],
	[cp].[Street_Number],
	[cp].[Street_Name],
	[cp].[City_Code],
	[cda].[Agent_Id],
	[cda].[Distributor_Id],
	[cda].[Contract_Id],
	[cda].[Distributor_Type_Code],
	[cda].[Distributor_Agent_Type_Prefix],
	[cda].[Represents_Type_Prefix],
	[a].[Agent_Id],
	[d].[Distributor_Id],
	[d].[Type_Code],
	[dcp].[Distributor_Id],
	[dcp].[Commercial_Property_Id],
	[dcp].[Distributor_Type_Code],
	[cp].[Commercial_Property_Id],
	[cp].[State],
	[cp].[Zip_Code],
	[cp].[Zip_Plus_4],
	[cd].[Contract_Id],
	[cd].[Type_Code],
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
	[cda].[Distributor_Agent_Type_Prefix] = N'OFFICE' AND
	[cda].[Represents_Type_Prefix] = N'REPRESENTS' AND
	[cd].[Type_Code] = N'ESTCOE' AND
	[d].[Type_Code] = N'RE' AND
	[dcp].[Distributor_Type_Code] = N'RE'

BeforeExecute
-- SqlServer.2012

DROP TABLE [Cities]

BeforeExecute
-- SqlServer.2012

DROP TABLE [Contract_Dates]

BeforeExecute
-- SqlServer.2012

DROP TABLE [Commercial_Property]

BeforeExecute
-- SqlServer.2012

DROP TABLE [Distributor_Commercial_Propert]

BeforeExecute
-- SqlServer.2012

DROP TABLE [Distributor]

BeforeExecute
-- SqlServer.2012

DROP TABLE [Agent]

BeforeExecute
-- SqlServer.2012

DROP TABLE [Contract_Distributor_Agent]

