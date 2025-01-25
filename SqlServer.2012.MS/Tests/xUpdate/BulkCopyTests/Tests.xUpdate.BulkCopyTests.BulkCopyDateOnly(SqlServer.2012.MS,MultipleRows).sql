BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(DATEFROMPARTS(2021, 1, 1))

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (2)
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

