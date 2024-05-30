BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [DateOnlyTable]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[DateOnlyTable]', N'U') IS NULL)
	CREATE TABLE [DateOnlyTable]
	(
		[Date] Date NOT NULL
	)

BeforeExecute
INSERT BULK [DateOnlyTable](Date)

BeforeExecute
-- SqlServer.2017

SELECT TOP (2)
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [DateOnlyTable]

