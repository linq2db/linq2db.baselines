-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(DATEFROMPARTS(2021, 1, 1))

-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (2)
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

