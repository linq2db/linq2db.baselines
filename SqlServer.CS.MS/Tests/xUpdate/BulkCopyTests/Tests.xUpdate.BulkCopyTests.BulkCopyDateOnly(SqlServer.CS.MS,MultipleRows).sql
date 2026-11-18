-- SqlServer.CS.MS SqlServer.2025
INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(DATEFROMPARTS(2021, 1, 1))

-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (2)
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

