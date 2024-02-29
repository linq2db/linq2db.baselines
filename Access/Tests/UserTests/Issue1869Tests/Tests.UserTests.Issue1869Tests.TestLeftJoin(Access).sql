BeforeExecute
-- Access AccessOleDb

DROP TABLE [tblMonth]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [tblMonth]
(
	[MonthNumber] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [tblDefect]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [tblDefect]
(
	[Id]             Int            NOT NULL IDENTITY,
	[Nam]            NVarChar(255)  NOT NULL,
	[Id_Workstation] Int            NOT NULL,
	[Ok]             Bit            NOT NULL,
	[Del]            Bit            NOT NULL,

	CONSTRAINT [PK_tblDefect] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [tblFtq]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [tblFtq]
(
	[Id]           Int       NOT NULL IDENTITY,
	[EntryDate]    DateTime  NOT NULL,
	[EntryShift]   TinyInt   NOT NULL,
	[Id_Operator]  Int       NOT NULL,
	[Id_Reference] Int       NOT NULL,
	[Id_Defect]    Int       NOT NULL,
	[Qty]          Int       NOT NULL,

	CONSTRAINT [PK_tblFtq] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [tblWorkstation]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [tblWorkstation]
(
	[Id]                  Int            NOT NULL IDENTITY,
	[Id_WorkstationGroup] Int            NOT NULL,
	[Nam]                 NVarChar(255)  NOT NULL,
	[Del]                 Bit            NOT NULL,

	CONSTRAINT [PK_tblWorkstation] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [tblWorkstationGroup]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [tblWorkstationGroup]
(
	[Id]            Int            NOT NULL IDENTITY,
	[Nam]           NVarChar(255)  NOT NULL,
	[Id_SectorPart] Int            NOT NULL,
	[Id_Sector]     Int            NOT NULL,
	[Del]           Bit            NOT NULL,

	CONSTRAINT [PK_tblWorkstationGroup] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @dateMin Date -- DateTime
SET     @dateMin = #2020-02-29 17:54:55#
DECLARE @dateMax Date -- DateTime
SET     @dateMax = #2020-02-29 17:54:55#
DECLARE @sectorId Integer -- Int32
SET     @sectorId = 1

SELECT
	[m_1].[MonthNumber],
	[t2].[MonthNumber],
	[t2].[Ftq]
FROM
	[tblMonth] [m_1]
		LEFT JOIN (
			SELECT
				[q_1].[MonthNumber],
				Sum([q_1].[Ftq]) as [Ftq]
			FROM
				(
					SELECT
						[t1].[MonthNumber],
						Sum([t1].[Qty]) / Sum(Iif([t1].[Ok], 0, [t1].[Qty])) as [Ftq]
					FROM
						(
							SELECT
								DatePart('m', [q].[EntryDate]) as [MonthNumber],
								[a_Workstation].[Id_WorkstationGroup],
								[a_Defect].[Ok],
								[q].[Qty]
							FROM
								(([tblFtq] [q]
									INNER JOIN [tblDefect] [a_Defect] ON ([q].[Id_Defect] = [a_Defect].[Id]))
										INNER JOIN [tblWorkstation] [a_Workstation] ON ([a_Defect].[Id_Workstation] = [a_Workstation].[Id]))
									INNER JOIN [tblWorkstationGroup] [a_WorkstationGroup] ON ([a_Workstation].[Id_WorkstationGroup] = [a_WorkstationGroup].[Id])
							WHERE
								[q].[EntryDate] >= @dateMin AND [q].[EntryDate] <= @dateMax AND
								[a_WorkstationGroup].[Id_Sector] = @sectorId
						) [t1]
					GROUP BY
						[t1].[MonthNumber],
						[t1].[Id_WorkstationGroup]
				) [q_1]
			GROUP BY
				[q_1].[MonthNumber]
		) [t2] ON ([t2].[MonthNumber] = [m_1].[MonthNumber])

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

