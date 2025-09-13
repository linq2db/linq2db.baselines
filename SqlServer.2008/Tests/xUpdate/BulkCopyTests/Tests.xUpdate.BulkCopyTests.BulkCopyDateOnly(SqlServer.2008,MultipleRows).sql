BeforeExecute
-- SqlServer.2008

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(CAST('2021-01-01' AS DATE))

BeforeExecute
-- SqlServer.2008

SELECT TOP (2)
	[t1].[Id],
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

