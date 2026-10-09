-- SqlServer.2008
SELECT TOP (2)
	DatePart(year, Coalesce([j].[SmallTyped], CAST('1900-01-01T00:00:00.000' AS SMALLDATETIME))),
	DatePart(year, Coalesce([j].[SmallPlain], CAST('0001-01-01T00:00:00.0000000' AS DATETIME2))),
	DatePart(year, Coalesce([j].[DtTyped], CAST('1753-01-01T00:00:00.000' AS DATETIME))),
	DatePart(year, Coalesce([j].[DtPlain], CAST('0001-01-01T00:00:00.0000000' AS DATETIME2))),
	DatePart(year, Coalesce([j].[DateTyped], CAST('0001-01-01' AS DATE))),
	DatePart(year, Coalesce([j].[DatePlain], CAST('0001-01-01T00:00:00.0000000' AS DATETIME2))),
	DatePart(year, Coalesce([j].[OnlyDate], CAST('0001-01-01' AS DATE))),
	DatePart(year, Coalesce([j].[OnlyDateTime], CAST('1753-01-01' AS DATE)))
FROM
	[PhysicalDateEntity] [t1]
		LEFT JOIN [PhysicalDateEntity] [j] ON [j].[Id] = [t1].[Id] + 1000

