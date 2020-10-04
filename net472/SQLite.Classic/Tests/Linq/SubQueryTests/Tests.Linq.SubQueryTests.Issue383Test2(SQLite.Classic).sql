﻿BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Contract_Distributor_Agent]
(
	[Agent_Id]                      INTEGER       NOT NULL,
	[Distributor_Id]                INTEGER       NOT NULL,
	[Contract_Id]                   INTEGER       NOT NULL,
	[Distributor_Type_Code]         NVarChar(255)     NULL,
	[Distributor_Agent_Type_Prefix] NVarChar(255)     NULL,
	[Represents_Type_Prefix]        NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
(1,1,198827882,'CC','OFFICE','REPRESENTS')

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Agent]
(
	[Agent_Id]   INTEGER       NOT NULL,
	[First_Name] NVarChar(255)     NULL,
	[Last_Name]  NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Agent]
(
	[Agent_Id],
	[First_Name],
	[Last_Name]
)
VALUES
(1,'x','x')

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Distributor]
(
	[Distributor_Id]   INTEGER       NOT NULL,
	[Type_Code]        NVarChar(255)     NULL,
	[Distributor_Name] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Distributor]
(
	[Distributor_Id],
	[Type_Code],
	[Distributor_Name]
)
VALUES
(1,'RE','x')

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Distributor_Commercial_Propert]
(
	[Distributor_Id]         INTEGER       NOT NULL,
	[Commercial_Property_Id] INTEGER       NOT NULL,
	[Distributor_Type_Code]  NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Distributor_Commercial_Propert]
(
	[Distributor_Id],
	[Commercial_Property_Id],
	[Distributor_Type_Code]
)
VALUES
(1,1,'RE')

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Commercial_Property]
(
	[Commercial_Property_Id] INTEGER       NOT NULL,
	[Street_Number]          NVarChar(255)     NULL,
	[Street_Name]            NVarChar(255)     NULL,
	[State]                  NVarChar(255)     NULL,
	[Zip_Code]               NVarChar(255)     NULL,
	[Zip_Plus_4]             NVarChar(255)     NULL,
	[City_Code]              NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
(1,'x','x','x','x','x','x')

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Contract_Dates]
(
	[Contract_Id]    INTEGER       NOT NULL,
	[Type_Code]      NVarChar(255)     NULL,
	[Effective_Date] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Contract_Dates]
(
	[Contract_Id],
	[Type_Code],
	[Effective_Date]
)
VALUES
(198827882,'ESTCOE','x')

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Cities]
(
	[City_Code] NVarChar(255)     NULL,
	[City_Name] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Cities]
(
	[City_Code],
	[City_Name]
)
VALUES
('x','Urupinsk')

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[a].[First_Name],
	[a].[Last_Name],
	[d].[Distributor_Name],
	[cp].[Street_Number],
	[cp].[Street_Name],
	(
		SELECT
			[c_1].[City_Name]
		FROM
			[Cities] [c_1]
		WHERE
			([c_1].[City_Code] IS NULL AND [cp].[City_Code] IS NULL OR [c_1].[City_Code] = [cp].[City_Code])
	),
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
	[cda].[Distributor_Type_Code] = 'CC' AND
	[cda].[Distributor_Agent_Type_Prefix] = 'OFFICE' AND
	[cda].[Represents_Type_Prefix] = 'REPRESENTS' AND
	[cd].[Type_Code] = 'ESTCOE' AND
	[d].[Type_Code] = 'RE' AND
	[dcp].[Distributor_Type_Code] = 'RE'

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Cities]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Contract_Dates]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Commercial_Property]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Distributor_Commercial_Propert]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Distributor]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Agent]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Contract_Distributor_Agent]

