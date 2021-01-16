BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Contract_Distributor_Agent]', N'U') IS NOT NULL)
	DROP TABLE [Contract_Distributor_Agent]

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

INSERT INTO [Contract_Distributor_Agent]
(
	[Agent_Id],
	[Distributor_Id],
	[Contract_Id],
	[Distributor_Type_Code],
	[Distributor_Agent_Type_Prefix],
	[Represents_Type_Prefix]
)
SELECT 1,1,198827882,N'CC',N'OFFICE',N'REPRESENTS'

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Agent]', N'U') IS NOT NULL)
	DROP TABLE [Agent]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Agent]', N'U') IS NULL)
	CREATE TABLE [Agent]
	(
		[Agent_Id]   Int            NOT NULL,
		[First_Name] NVarChar(4000)     NULL,
		[Last_Name]  NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Agent]
(
	[Agent_Id],
	[First_Name],
	[Last_Name]
)
SELECT 1,N'x',N'x'

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Distributor]', N'U') IS NOT NULL)
	DROP TABLE [Distributor]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Distributor]', N'U') IS NULL)
	CREATE TABLE [Distributor]
	(
		[Distributor_Id]   Int            NOT NULL,
		[Type_Code]        NVarChar(4000)     NULL,
		[Distributor_Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Distributor]
(
	[Distributor_Id],
	[Type_Code],
	[Distributor_Name]
)
SELECT 1,N'RE',N'x'

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Distributor_Commercial_Propert]', N'U') IS NOT NULL)
	DROP TABLE [Distributor_Commercial_Propert]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Distributor_Commercial_Propert]', N'U') IS NULL)
	CREATE TABLE [Distributor_Commercial_Propert]
	(
		[Distributor_Id]         Int            NOT NULL,
		[Commercial_Property_Id] Int            NOT NULL,
		[Distributor_Type_Code]  NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Distributor_Commercial_Propert]
(
	[Distributor_Id],
	[Commercial_Property_Id],
	[Distributor_Type_Code]
)
SELECT 1,1,N'RE'

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Commercial_Property]', N'U') IS NOT NULL)
	DROP TABLE [Commercial_Property]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Commercial_Property]', N'U') IS NULL)
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
-- SqlServer.2005

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
SELECT 1,N'x',N'x',N'x',N'x',N'x',N'x'

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Contract_Dates]', N'U') IS NOT NULL)
	DROP TABLE [Contract_Dates]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Contract_Dates]', N'U') IS NULL)
	CREATE TABLE [Contract_Dates]
	(
		[Contract_Id]    Int            NOT NULL,
		[Type_Code]      NVarChar(4000)     NULL,
		[Effective_Date] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Contract_Dates]
(
	[Contract_Id],
	[Type_Code],
	[Effective_Date]
)
SELECT 198827882,N'ESTCOE',N'x'

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Cities]', N'U') IS NOT NULL)
	DROP TABLE [Cities]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Cities]', N'U') IS NULL)
	CREATE TABLE [Cities]
	(
		[City_Code] NVarChar(4000)     NULL,
		[City_Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Cities]
(
	[City_Code],
	[City_Name]
)
SELECT N'x',N'Urupinsk'

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Cities]', N'U') IS NOT NULL)
	DROP TABLE [Cities]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Contract_Dates]', N'U') IS NOT NULL)
	DROP TABLE [Contract_Dates]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Commercial_Property]', N'U') IS NOT NULL)
	DROP TABLE [Commercial_Property]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Distributor_Commercial_Propert]', N'U') IS NOT NULL)
	DROP TABLE [Distributor_Commercial_Propert]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Distributor]', N'U') IS NOT NULL)
	DROP TABLE [Distributor]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Agent]', N'U') IS NOT NULL)
	DROP TABLE [Agent]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Contract_Distributor_Agent]', N'U') IS NOT NULL)
	DROP TABLE [Contract_Distributor_Agent]

