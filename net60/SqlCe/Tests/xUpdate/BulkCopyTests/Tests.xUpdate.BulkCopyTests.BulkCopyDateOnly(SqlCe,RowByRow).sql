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
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [DateOnlyTable]

