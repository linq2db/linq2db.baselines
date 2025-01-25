BeforeExecute
-- Access AccessOleDb

DROP TABLE [Contract_Distributor_Agent]

BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb
DECLARE @Agent_Id Integer -- Int32
SET     @Agent_Id = 1
DECLARE @Distributor_Id Integer -- Int32
SET     @Distributor_Id = 1
DECLARE @Contract_Id Integer -- Int32
SET     @Contract_Id = 198827882
DECLARE @Distributor_Type_Code VarWChar(2) -- String
SET     @Distributor_Type_Code = 'CC'
DECLARE @Distributor_Agent_Type_Prefix VarWChar(6) -- String
SET     @Distributor_Agent_Type_Prefix = 'OFFICE'
DECLARE @Represents_Type_Prefix VarWChar(10) -- String
SET     @Represents_Type_Prefix = 'REPRESENTS'

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
(
	@Agent_Id,
	@Distributor_Id,
	@Contract_Id,
	@Distributor_Type_Code,
	@Distributor_Agent_Type_Prefix,
	@Represents_Type_Prefix
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Agent]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Agent]
(
	[Agent_Id]   Int           NOT NULL,
	[First_Name] NVarChar(255)     NULL,
	[Last_Name]  NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Agent_Id Integer -- Int32
SET     @Agent_Id = 1
DECLARE @First_Name VarWChar(1) -- String
SET     @First_Name = 'x'
DECLARE @Last_Name VarWChar(1) -- String
SET     @Last_Name = 'x'

INSERT INTO [Agent]
(
	[Agent_Id],
	[First_Name],
	[Last_Name]
)
VALUES
(
	@Agent_Id,
	@First_Name,
	@Last_Name
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Distributor]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Distributor]
(
	[Distributor_Id]   Int           NOT NULL,
	[Type_Code]        NVarChar(255)     NULL,
	[Distributor_Name] NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Distributor_Id Integer -- Int32
SET     @Distributor_Id = 1
DECLARE @Type_Code VarWChar(2) -- String
SET     @Type_Code = 'RE'
DECLARE @Distributor_Name VarWChar(1) -- String
SET     @Distributor_Name = 'x'

INSERT INTO [Distributor]
(
	[Distributor_Id],
	[Type_Code],
	[Distributor_Name]
)
VALUES
(
	@Distributor_Id,
	@Type_Code,
	@Distributor_Name
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Distributor_Commercial_Propert]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Distributor_Commercial_Propert]
(
	[Distributor_Id]         Int           NOT NULL,
	[Commercial_Property_Id] Int           NOT NULL,
	[Distributor_Type_Code]  NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Distributor_Id Integer -- Int32
SET     @Distributor_Id = 1
DECLARE @Commercial_Property_Id Integer -- Int32
SET     @Commercial_Property_Id = 1
DECLARE @Distributor_Type_Code VarWChar(2) -- String
SET     @Distributor_Type_Code = 'RE'

INSERT INTO [Distributor_Commercial_Propert]
(
	[Distributor_Id],
	[Commercial_Property_Id],
	[Distributor_Type_Code]
)
VALUES
(
	@Distributor_Id,
	@Commercial_Property_Id,
	@Distributor_Type_Code
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Commercial_Property]

BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb
DECLARE @Commercial_Property_Id Integer -- Int32
SET     @Commercial_Property_Id = 1
DECLARE @Street_Number VarWChar(1) -- String
SET     @Street_Number = 'x'
DECLARE @Street_Name VarWChar(1) -- String
SET     @Street_Name = 'x'
DECLARE @State VarWChar(1) -- String
SET     @State = 'x'
DECLARE @Zip_Code VarWChar(1) -- String
SET     @Zip_Code = 'x'
DECLARE @Zip_Plus_4 VarWChar(1) -- String
SET     @Zip_Plus_4 = 'x'
DECLARE @City_Code VarWChar(1) -- String
SET     @City_Code = 'x'

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
(
	@Commercial_Property_Id,
	@Street_Number,
	@Street_Name,
	@State,
	@Zip_Code,
	@Zip_Plus_4,
	@City_Code
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Contract_Dates]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Contract_Dates]
(
	[Contract_Id]    Int           NOT NULL,
	[Type_Code]      NVarChar(255)     NULL,
	[Effective_Date] NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Contract_Id Integer -- Int32
SET     @Contract_Id = 198827882
DECLARE @Type_Code VarWChar(6) -- String
SET     @Type_Code = 'ESTCOE'
DECLARE @Effective_Date VarWChar(1) -- String
SET     @Effective_Date = 'x'

INSERT INTO [Contract_Dates]
(
	[Contract_Id],
	[Type_Code],
	[Effective_Date]
)
VALUES
(
	@Contract_Id,
	@Type_Code,
	@Effective_Date
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Cities]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Cities]
(
	[City_Code] NVarChar(255)     NULL,
	[City_Name] NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @City_Code VarWChar(1) -- String
SET     @City_Code = 'x'
DECLARE @City_Name VarWChar(8) -- String
SET     @City_Name = 'Urupinsk'

INSERT INTO [Cities]
(
	[City_Code],
	[City_Name]
)
VALUES
(
	@City_Code,
	@City_Name
)

BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access AccessOleDb

SELECT
	[m_1].[City_Code],
	[d_1].[City_Name]
FROM
	(
		SELECT DISTINCT
			[cp].[City_Code]
		FROM
			(((([Contract_Distributor_Agent] [cda]
				INNER JOIN [Agent] [a] ON ([cda].[Agent_Id] = [a].[Agent_Id]))
				INNER JOIN [Distributor] [d] ON ([cda].[Distributor_Id] = [d].[Distributor_Id]))
				INNER JOIN [Distributor_Commercial_Propert] [dcp] ON ([d].[Distributor_Id] = [dcp].[Distributor_Id]))
				INNER JOIN [Commercial_Property] [cp] ON ([dcp].[Commercial_Property_Id] = [cp].[Commercial_Property_Id]))
				INNER JOIN [Contract_Dates] [cd] ON ([cda].[Contract_Id] = [cd].[Contract_Id])
		WHERE
			[cda].[Contract_Id] = 198827882 AND
			[cda].[Distributor_Type_Code] = 'CC' AND
			[cda].[Distributor_Agent_Type_Prefix] = 'OFFICE' AND
			[cda].[Represents_Type_Prefix] = 'REPRESENTS' AND
			[cd].[Type_Code] = 'ESTCOE' AND
			[d].[Type_Code] = 'RE' AND
			[dcp].[Distributor_Type_Code] = 'RE'
	) [m_1]
		INNER JOIN [Cities] [d_1] ON (([d_1].[City_Code] = [m_1].[City_Code] OR [d_1].[City_Code] IS NULL AND [m_1].[City_Code] IS NULL))

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access AccessOleDb

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
	(((([Contract_Distributor_Agent] [cda]
		INNER JOIN [Agent] [a] ON ([cda].[Agent_Id] = [a].[Agent_Id]))
		INNER JOIN [Distributor] [d] ON ([cda].[Distributor_Id] = [d].[Distributor_Id]))
		INNER JOIN [Distributor_Commercial_Propert] [dcp] ON ([d].[Distributor_Id] = [dcp].[Distributor_Id]))
		INNER JOIN [Commercial_Property] [cp] ON ([dcp].[Commercial_Property_Id] = [cp].[Commercial_Property_Id]))
		INNER JOIN [Contract_Dates] [cd] ON ([cda].[Contract_Id] = [cd].[Contract_Id])
WHERE
	[cda].[Contract_Id] = 198827882 AND
	[cda].[Distributor_Type_Code] = 'CC' AND
	[cda].[Distributor_Agent_Type_Prefix] = 'OFFICE' AND
	[cda].[Represents_Type_Prefix] = 'REPRESENTS' AND
	[cd].[Type_Code] = 'ESTCOE' AND
	[d].[Type_Code] = 'RE' AND
	[dcp].[Distributor_Type_Code] = 'RE'

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Cities]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Contract_Dates]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Commercial_Property]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Distributor_Commercial_Propert]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Distributor]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Agent]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Contract_Distributor_Agent]

