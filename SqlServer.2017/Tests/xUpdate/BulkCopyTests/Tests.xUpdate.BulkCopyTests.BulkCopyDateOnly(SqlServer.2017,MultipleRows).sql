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
-- SqlServer.2017

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(DATEFROMPARTS(2021, 1, 1))

BeforeExecute
-- SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [DateOnlyTable]

