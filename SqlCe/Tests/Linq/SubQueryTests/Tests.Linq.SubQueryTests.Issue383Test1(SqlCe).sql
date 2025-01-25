BeforeExecute
-- SqlCe

DROP TABLE [Contract_Distributor_Agent]

BeforeExecute
-- SqlCe

CREATE TABLE [Contract_Distributor_Agent]
(
	[Agent_Id]                      Int           NOT NULL,
	[Distributor_Id]                Int           NOT NULL,
	[Contract_Id]                   Int           NOT NULL,
	[Distributor_Type_Code]         NVarChar(255)     NULL,
	[Distributor_Agent_Type_Prefix] NVarChar(255)     NULL,
	[Represents_Type_Prefix]        NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [Contract_Distributor_Agent]
(
	[Agent_Id],
	[Distributor_Id],
	[Contract_Id],
	[Distributor_Type_Code],
	[Distributor_Agent_Type_Prefix],
	[Represents_Type_Prefix]
)
SELECT 1,1,198827882,'CC','OFFICE','REPRESENTS'

BeforeExecute
-- SqlCe

DROP TABLE [Agent]

BeforeExecute
-- SqlCe

CREATE TABLE [Agent]
(
	[Agent_Id]   Int           NOT NULL,
	[First_Name] NVarChar(255)     NULL,
	[Last_Name]  NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [Agent]
(
	[Agent_Id],
	[First_Name],
	[Last_Name]
)
SELECT 1,'x','x'

BeforeExecute
-- SqlCe

DROP TABLE [Distributor]

BeforeExecute
-- SqlCe

CREATE TABLE [Distributor]
(
	[Distributor_Id]   Int           NOT NULL,
	[Type_Code]        NVarChar(255)     NULL,
	[Distributor_Name] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [Distributor]
(
	[Distributor_Id],
	[Type_Code],
	[Distributor_Name]
)
SELECT 1,'RE','x'

BeforeExecute
-- SqlCe

DROP TABLE [Distributor_Commercial_Propert]

BeforeExecute
-- SqlCe

CREATE TABLE [Distributor_Commercial_Propert]
(
	[Distributor_Id]         Int           NOT NULL,
	[Commercial_Property_Id] Int           NOT NULL,
	[Distributor_Type_Code]  NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [Distributor_Commercial_Propert]
(
	[Distributor_Id],
	[Commercial_Property_Id],
	[Distributor_Type_Code]
)
SELECT 1,1,'RE'

BeforeExecute
-- SqlCe

DROP TABLE [Commercial_Property]

BeforeExecute
-- SqlCe

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
-- SqlCe

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
SELECT 1,'x','x','x','x','x','x'

BeforeExecute
-- SqlCe

DROP TABLE [Contract_Dates]

BeforeExecute
-- SqlCe

CREATE TABLE [Contract_Dates]
(
	[Contract_Id]    Int           NOT NULL,
	[Type_Code]      NVarChar(255)     NULL,
	[Effective_Date] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [Contract_Dates]
(
	[Contract_Id],
	[Type_Code],
	[Effective_Date]
)
SELECT 198827882,'ESTCOE','x'

BeforeExecute
-- SqlCe

DROP TABLE [Cities]

BeforeExecute
-- SqlCe

CREATE TABLE [Cities]
(
	[City_Code] NVarChar(255)     NULL,
	[City_Name] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [Cities]
(
	[City_Code],
	[City_Name]
)
SELECT 'x','Urupinsk'

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlCe

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
			[cda].[Distributor_Type_Code] = 'CC' AND
			[cda].[Distributor_Agent_Type_Prefix] = 'OFFICE' AND
			[cda].[Represents_Type_Prefix] = 'REPRESENTS' AND
			[cd].[Type_Code] = 'ESTCOE' AND
			[d].[Type_Code] = 'RE' AND
			[dcp].[Distributor_Type_Code] = 'RE'
	) [m_1]
		INNER JOIN [Cities] [d_1] ON ([d_1].[City_Code] = [m_1].[City_Code] OR [d_1].[City_Code] IS NULL AND [m_1].[City_Code] IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlCe

SELECT
	[a].[First_Name],
	[a].[Last_Name],
	[d].[Distributor_Name],
	[cp].[Street_Number],
	[cp].[Street_Name],
	[cp].[City_Code],
	[cp].[State] as [State_1],
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
	[cda].[Distributor_Type_Code] = 'CC' AND
	[cda].[Distributor_Agent_Type_Prefix] = 'OFFICE' AND
	[cda].[Represents_Type_Prefix] = 'REPRESENTS' AND
	[cd].[Type_Code] = 'ESTCOE' AND
	[d].[Type_Code] = 'RE' AND
	[dcp].[Distributor_Type_Code] = 'RE'

BeforeExecute
-- SqlCe

DROP TABLE [Cities]

BeforeExecute
-- SqlCe

DROP TABLE [Contract_Dates]

BeforeExecute
-- SqlCe

DROP TABLE [Commercial_Property]

BeforeExecute
-- SqlCe

DROP TABLE [Distributor_Commercial_Propert]

BeforeExecute
-- SqlCe

DROP TABLE [Distributor]

BeforeExecute
-- SqlCe

DROP TABLE [Agent]

BeforeExecute
-- SqlCe

DROP TABLE [Contract_Distributor_Agent]

