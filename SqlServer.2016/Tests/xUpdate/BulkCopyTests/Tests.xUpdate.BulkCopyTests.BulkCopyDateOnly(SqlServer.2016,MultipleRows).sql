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

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(DATEFROMPARTS(2021, 1, 1))

BeforeExecute
-- SqlServer.2016

SELECT TOP (2)
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [DateOnlyTable]

