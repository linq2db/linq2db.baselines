-- SqlServer.2025.MS SqlServer.2025
SELECT TOP (2)
	DatePart(year, Coalesce([j].[SmallTyped], CAST('1900-01-01T00:00:00.000' AS SMALLDATETIME))),
	DatePart(year, Coalesce([j].[SmallPlain], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7))),
	DatePart(year, Coalesce([j].[DtTyped], DATETIMEFROMPARTS(1753, 1, 1, 0, 0, 0, 0))),
	DatePart(year, Coalesce([j].[DtPlain], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7))),
	DatePart(year, Coalesce([j].[DateTyped], DATEFROMPARTS(1, 1, 1))),
	DatePart(year, Coalesce([j].[DatePlain], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7))),
	DatePart(year, Coalesce([j].[OnlyDate], DATEFROMPARTS(1, 1, 1))),
	DatePart(year, Coalesce([j].[OnlyDateTime], DATEFROMPARTS(1753, 1, 1)))
FROM
	[PhysicalDateEntity] [t1]
		LEFT JOIN [PhysicalDateEntity] [j] ON [j].[Id] = [t1].[Id] + 1000

