BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [DateOnlyTable]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[DateOnlyTable]', N'U') IS NULL)
	CREATE TABLE [DateOnlyTable]
	(
		[Date] Date NOT NULL
	)

BeforeExecute
INSERT BULK [DateOnlyTable](Date)

BeforeExecute
-- SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [DateOnlyTable]

