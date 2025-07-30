BeforeExecute
-- SqlServer.2025 SqlServer.2022

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(DATEFROMPARTS(2021, 1, 1))

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT TOP (2)
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

