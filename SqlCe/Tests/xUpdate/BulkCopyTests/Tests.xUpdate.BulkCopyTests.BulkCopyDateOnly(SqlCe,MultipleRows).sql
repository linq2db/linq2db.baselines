BeforeExecute
-- SqlCe

DROP TABLE [DateOnlyTable]

BeforeExecute
-- SqlCe

CREATE TABLE [DateOnlyTable]
(
	[Date] DateTime NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [DateOnlyTable]
(
	[Date]
)
SELECT '2021-01-01'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[t1].[Date] as [Date_1]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [DateOnlyTable]

