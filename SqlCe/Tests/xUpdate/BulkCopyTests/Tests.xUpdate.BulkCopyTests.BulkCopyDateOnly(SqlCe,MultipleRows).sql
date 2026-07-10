-- SqlCe
INSERT INTO [DateOnlyTable]
(
	[Date]
)
SELECT '2021-01-01'

-- SqlCe
SELECT TOP (2)
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

