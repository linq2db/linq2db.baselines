-- Sybase.Managed Sybase
DECLARE @Date Date
SET     @Date = '2021-01-01'

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(
	@Date
)

-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Id],
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

