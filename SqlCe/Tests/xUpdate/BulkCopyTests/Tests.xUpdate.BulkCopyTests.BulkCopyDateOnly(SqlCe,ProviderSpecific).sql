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
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [DateOnlyTable]

