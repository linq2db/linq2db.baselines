BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [tblMonth]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [tblMonth]
(
	[MonthNumber] Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [tblDefect]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

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
-- Access.Ace.Odbc AccessODBC

DROP TABLE [tblFtq]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

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
-- Access.Ace.Odbc AccessODBC

DROP TABLE [tblWorkstation]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [tblWorkstation]
(
	[Id]                  Int            NOT NULL IDENTITY,
	[Id_WorkstationGroup] Int            NOT NULL,
	[Nam]                 NVarChar(255)  NOT NULL,
	[Del]                 Bit            NOT NULL,

	CONSTRAINT [PK_tblWorkstation] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [tblWorkstationGroup]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

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
-- Access.Ace.Odbc AccessODBC
DECLARE @dateMin  -- DateTime
SET     @dateMin = #2020-02-29 17:54:55#
DECLARE @dateMax  -- DateTime
SET     @dateMax = #2020-02-29 17:54:55#
DECLARE @sectorId  -- Int32
SET     @sectorId = 1

SELECT
	[m_1].[MonthNumber],
	[q].[Key_1],
	[q].[Ftq]
FROM
	[tblMonth] [m_1]
		LEFT JOIN (
			SELECT
				[g_3].[Key_1],
				SUM([g_3].[Ftq]) as [Ftq]
			FROM
				(
					SELECT
						[g_2].[MonthNumber] as [Key_1],
						SUM([g_2].[Qty]) / SUM(IIF([g_2].[Ok] = True, 0, [g_2].[Qty])) as [Ftq]
					FROM
						(
							SELECT
								DatePart('m', [g_1].[EntryDate]) as [MonthNumber],
								[a_Workstation].[Id_WorkstationGroup],
								[g_1].[Qty],
								[a_Defect].[Ok]
							FROM
								(([tblFtq] [g_1]
									INNER JOIN [tblDefect] [a_Defect] ON ([g_1].[Id_Defect] = [a_Defect].[Id]))
									INNER JOIN [tblWorkstation] [a_Workstation] ON ([a_Defect].[Id_Workstation] = [a_Workstation].[Id]))
									INNER JOIN [tblWorkstationGroup] [a_WorkstationGroup] ON ([a_Workstation].[Id_WorkstationGroup] = [a_WorkstationGroup].[Id])
							WHERE
								[g_1].[EntryDate] >= ? AND [g_1].[EntryDate] <= ? AND
								[a_WorkstationGroup].[Id_Sector] = ?
						) [g_2]
					GROUP BY
						[g_2].[MonthNumber],
						[g_2].[Id_WorkstationGroup]
				) [g_3]
			GROUP BY
				[g_3].[Key_1]
		) [q] ON ([q].[Key_1] = [m_1].[MonthNumber])

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [tblWorkstationGroup]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [tblWorkstation]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [tblFtq]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [tblDefect]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [tblMonth]

