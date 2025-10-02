BeforeExecute
-- SqlCe
DECLARE @Date DateTime
SET     @Date = '2021-01-01'

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(
	@Date
)

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[t1].[Id],
	[t1].[Date] as [Date_1]
FROM
	[DateOnlyTable] [t1]

