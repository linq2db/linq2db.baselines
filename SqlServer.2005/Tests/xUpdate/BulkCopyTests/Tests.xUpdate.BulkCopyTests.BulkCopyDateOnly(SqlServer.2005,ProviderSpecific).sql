BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DateOnlyTable]', N'U') IS NOT NULL)
	DROP TABLE [DateOnlyTable]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DateOnlyTable]', N'U') IS NULL)
	CREATE TABLE [DateOnlyTable]
	(
		[Date] DateTime NOT NULL
	)

BeforeExecute
INSERT BULK [DateOnlyTable](Date)

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DateOnlyTable]', N'U') IS NOT NULL)
	DROP TABLE [DateOnlyTable]

