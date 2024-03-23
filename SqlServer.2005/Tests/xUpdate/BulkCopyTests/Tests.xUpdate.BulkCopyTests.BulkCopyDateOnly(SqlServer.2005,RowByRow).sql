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
-- SqlServer.2005
DECLARE @Date DateTime
SET     @Date = CAST('2021-01-01T00:00:00.000' AS DATETIME)

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(
	@Date
)

BeforeExecute
-- SqlServer.2005

SELECT TOP (2)
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DateOnlyTable]', N'U') IS NOT NULL)
	DROP TABLE [DateOnlyTable]

