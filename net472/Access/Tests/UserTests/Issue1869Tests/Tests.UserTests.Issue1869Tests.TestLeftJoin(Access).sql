BeforeExecute
-- Access AccessOleDb

CREATE TABLE [tblMonth]
(
	[MonthNumber] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [tblDefect]
(
	[Del]            Bit            NOT NULL,
	[Ok]             Bit            NOT NULL,
	[Id_Workstation] Int            NOT NULL,
	[Nam]            NVarChar(255)  NOT NULL,
	[Id]             Int            NOT NULL IDENTITY,

	CONSTRAINT [PK_tblDefect] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [tblFtq]
(
	[Qty]          Int       NOT NULL,
	[Id_Defect]    Int       NOT NULL,
	[Id_Reference] Int       NOT NULL,
	[Id_Operator]  Int       NOT NULL,
	[EntryShift]   TinyInt   NOT NULL,
	[EntryDate]    DateTime  NOT NULL,
	[Id]           Int       NOT NULL IDENTITY,

	CONSTRAINT [PK_tblFtq] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [tblWorkstation]
(
	[Del]                 Bit            NOT NULL,
	[Nam]                 NVarChar(255)  NOT NULL,
	[Id_WorkstationGroup] Int            NOT NULL,
	[Id]                  Int            NOT NULL IDENTITY,

	CONSTRAINT [PK_tblWorkstation] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [tblWorkstationGroup]
(
	[Del]           Bit            NOT NULL,
	[Id_Sector]     Int            NOT NULL,
	[Id_SectorPart] Int            NOT NULL,
	[Nam]           NVarChar(255)  NOT NULL,
	[Id]            Int            NOT NULL IDENTITY,

	CONSTRAINT [PK_tblWorkstationGroup] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [tblWorkstationGroup]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [tblWorkstation]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [tblFtq]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [tblDefect]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [tblMonth]

