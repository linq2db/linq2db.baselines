-- Sybase.Managed Sybase

INSERT INTO [DateOnlyTable]
(
	[Date]
)
SELECT '2021-01-01'

-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Id],
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

