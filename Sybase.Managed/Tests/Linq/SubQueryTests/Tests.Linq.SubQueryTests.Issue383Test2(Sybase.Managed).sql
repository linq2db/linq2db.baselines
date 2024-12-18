BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Contract_Distributor_Agent') IS NOT NULL)
	DROP TABLE [Contract_Distributor_Agent]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Contract_Distributor_Agent') IS NULL)
	EXECUTE('
		CREATE TABLE [Contract_Distributor_Agent]
		(
			[Agent_Id]                    Int           NOT NULL,
			[Distributor_Id]              Int           NOT NULL,
			[Contract_Id]                 Int           NOT NULL,
			[Distributor_Type_Code]       NVarChar(255)     NULL,
			Distributor_Agent_Type_Prefix NVarChar(255)     NULL,
			[Represents_Type_Prefix]      NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Contract_Distributor_Agent]
(
	[Agent_Id],
	[Distributor_Id],
	[Contract_Id],
	[Distributor_Type_Code],
	Distributor_Agent_Type_Prefix,
	[Represents_Type_Prefix]
)
SELECT 1,1,198827882,'CC','OFFICE','REPRESENTS'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Agent') IS NOT NULL)
	DROP TABLE [Agent]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Agent') IS NULL)
	EXECUTE('
		CREATE TABLE [Agent]
		(
			[Agent_Id]   Int           NOT NULL,
			[First_Name] NVarChar(255)     NULL,
			[Last_Name]  NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Agent]
(
	[Agent_Id],
	[First_Name],
	[Last_Name]
)
SELECT 1,'x','x'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Distributor') IS NOT NULL)
	DROP TABLE [Distributor]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Distributor') IS NULL)
	EXECUTE('
		CREATE TABLE [Distributor]
		(
			[Distributor_Id]   Int           NOT NULL,
			[Type_Code]        NVarChar(255)     NULL,
			[Distributor_Name] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Distributor]
(
	[Distributor_Id],
	[Type_Code],
	[Distributor_Name]
)
SELECT 1,'RE','x'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Distributor_Commercial_Propert') IS NOT NULL)
	DROP TABLE Distributor_Commercial_Propert

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Distributor_Commercial_Propert') IS NULL)
	EXECUTE('
		CREATE TABLE Distributor_Commercial_Propert
		(
			[Distributor_Id]         Int           NOT NULL,
			[Commercial_Property_Id] Int           NOT NULL,
			[Distributor_Type_Code]  NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO Distributor_Commercial_Propert
(
	[Distributor_Id],
	[Commercial_Property_Id],
	[Distributor_Type_Code]
)
SELECT 1,1,'RE'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Commercial_Property') IS NOT NULL)
	DROP TABLE [Commercial_Property]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Commercial_Property') IS NULL)
	EXECUTE('
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
	')

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Contract_Dates') IS NOT NULL)
	DROP TABLE [Contract_Dates]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Contract_Dates') IS NULL)
	EXECUTE('
		CREATE TABLE [Contract_Dates]
		(
			[Contract_Id]    Int           NOT NULL,
			[Type_Code]      NVarChar(255)     NULL,
			[Effective_Date] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Contract_Dates]
(
	[Contract_Id],
	[Type_Code],
	[Effective_Date]
)
SELECT 198827882,'ESTCOE','x'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Cities') IS NOT NULL)
	DROP TABLE [Cities]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Cities') IS NULL)
	EXECUTE('
		CREATE TABLE [Cities]
		(
			[City_Code] NVarChar(255)     NULL,
			[City_Name] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Cities]
(
	[City_Code],
	[City_Name]
)
SELECT 'x','Urupinsk'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[a].[First_Name],
	[a].[Last_Name],
	[d].[Distributor_Name],
	[cp].[Street_Number],
	[cp].[Street_Name],
	[c_1].[City_Name],
	[cp].[State],
	[cp].[Zip_Code],
	[cp].[Zip_Plus_4],
	[cd].[Effective_Date]
FROM
	[Contract_Distributor_Agent] [cda]
		INNER JOIN [Agent] [a] ON [cda].[Agent_Id] = [a].[Agent_Id]
		INNER JOIN [Distributor] [d] ON [cda].[Distributor_Id] = [d].[Distributor_Id]
		INNER JOIN Distributor_Commercial_Propert [dcp] ON [d].[Distributor_Id] = [dcp].[Distributor_Id]
		INNER JOIN [Commercial_Property] [cp] ON [dcp].[Commercial_Property_Id] = [cp].[Commercial_Property_Id]
		INNER JOIN [Contract_Dates] [cd] ON [cda].[Contract_Id] = [cd].[Contract_Id]
		INNER JOIN [Cities] [c_1] ON [c_1].[City_Code] = [cp].[City_Code] AND [c_1].[City_Code] IS NOT NULL AND [cp].[City_Code] IS NOT NULL OR [c_1].[City_Code] IS NULL AND [cp].[City_Code] IS NULL
WHERE
	[cda].[Contract_Id] = 198827882 AND
	[cda].[Distributor_Type_Code] = 'CC' AND
	[cda].[Distributor_Type_Code] IS NOT NULL AND
	[cda].Distributor_Agent_Type_Prefix = 'OFFICE' AND
	[cda].Distributor_Agent_Type_Prefix IS NOT NULL AND
	[cda].[Represents_Type_Prefix] = 'REPRESENTS' AND
	[cda].[Represents_Type_Prefix] IS NOT NULL AND
	[cd].[Type_Code] = 'ESTCOE' AND
	[cd].[Type_Code] IS NOT NULL AND
	[d].[Type_Code] = 'RE' AND
	[d].[Type_Code] IS NOT NULL AND
	[dcp].[Distributor_Type_Code] = 'RE' AND
	[dcp].[Distributor_Type_Code] IS NOT NULL

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Cities') IS NOT NULL)
	DROP TABLE [Cities]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Contract_Dates') IS NOT NULL)
	DROP TABLE [Contract_Dates]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Commercial_Property') IS NOT NULL)
	DROP TABLE [Commercial_Property]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Distributor_Commercial_Propert') IS NOT NULL)
	DROP TABLE Distributor_Commercial_Propert

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Distributor') IS NOT NULL)
	DROP TABLE [Distributor]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Agent') IS NOT NULL)
	DROP TABLE [Agent]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Contract_Distributor_Agent') IS NOT NULL)
	DROP TABLE [Contract_Distributor_Agent]

