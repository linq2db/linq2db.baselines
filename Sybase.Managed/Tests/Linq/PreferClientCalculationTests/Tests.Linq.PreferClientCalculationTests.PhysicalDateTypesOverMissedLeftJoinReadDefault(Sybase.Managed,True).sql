-- Sybase.Managed Sybase
SELECT TOP 2
	DatePart(year, Coalesce([j].[SmallTyped], CAST('1900-01-01 00:00:00.000' AS SmallDateTime))),
	DatePart(year, Coalesce([j].[SmallPlain], CAST('1753-01-01 00:00:00.000' AS DateTime))),
	DatePart(year, Coalesce([j].[DtTyped], CAST('1753-01-01 00:00:00.000' AS DateTime))),
	DatePart(year, Coalesce([j].[DtPlain], CAST('1753-01-01 00:00:00.000' AS DateTime))),
	DatePart(year, Coalesce([j].[DateTyped], CAST('1753-01-01 00:00:00.000' AS Date))),
	DatePart(year, Coalesce([j].[DatePlain], CAST('1753-01-01 00:00:00.000' AS DateTime))),
	DatePart(year, Coalesce([j].[OnlyDate], CAST('0001-01-01' AS Date))),
	DatePart(year, Coalesce([j].[OnlyDateTime], CAST('1753-01-01' AS DateTime)))
FROM
	[PhysicalDateEntity] [t1]
		LEFT JOIN [PhysicalDateEntity] [j] ON [j].[Id] = [t1].[Id] + 1000

