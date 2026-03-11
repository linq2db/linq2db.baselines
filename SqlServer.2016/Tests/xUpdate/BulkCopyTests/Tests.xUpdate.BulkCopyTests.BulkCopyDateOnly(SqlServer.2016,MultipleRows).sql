-- SqlServer.2016

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(DATEFROMPARTS(2021, 1, 1))

-- SqlServer.2016

SELECT TOP (2)
	[t1].[Id],
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

