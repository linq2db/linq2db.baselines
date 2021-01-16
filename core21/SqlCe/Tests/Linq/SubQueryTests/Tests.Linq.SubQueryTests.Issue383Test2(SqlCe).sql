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
	[Street_Number]          NVarChar(255)     NULL,
	[Street_Name]            NVarChar(255)     NULL,
	[State]                  NVarChar(255)     NULL,
	[Zip_Code]               NVarChar(255)     NULL,
	[Zip_Plus_4]             NVarChar(255)     NULL,
	[City_Code]              NVarChar(255)     NULL
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

