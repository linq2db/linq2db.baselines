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
-- SqlServer.2016
DECLARE @Date Date
SET     @Date = DATETIME2FROMPARTS(2021, 1, 1, 0, 0, 0, 0, 7)

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(
	@Date
)

BeforeExecute
-- SqlServer.2016

SELECT TOP (2)
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [DateOnlyTable]

