BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[DateOnlyTable]', N'U') IS NOT NULL)
	DROP TABLE [DateOnlyTable]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[DateOnlyTable]', N'U') IS NULL)
	CREATE TABLE [DateOnlyTable]
	(
		[Date] Date NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Date Date
SET     @Date = CAST('2021-01-01T00:00:00.0000000' AS DATETIME2)

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(
	@Date
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (2)
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[DateOnlyTable]', N'U') IS NOT NULL)
	DROP TABLE [DateOnlyTable]

