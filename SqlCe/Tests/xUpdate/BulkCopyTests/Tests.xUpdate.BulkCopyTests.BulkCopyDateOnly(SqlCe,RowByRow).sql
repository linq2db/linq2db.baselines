-- SqlCe
DECLARE @Date DateTime
SET     @Date = '2021-01-01 00:00:00.000'

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(
	@Date
)

-- SqlCe
SELECT TOP (2)
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

