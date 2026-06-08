-- SqlCe

INSERT INTO [DateOnlyTable]
(
	[Date]
)
SELECT '2021-01-01'

-- SqlCe

SELECT TOP (2)
	[t1].[Date] as [Date_1]
FROM
	[DateOnlyTable] [t1]

