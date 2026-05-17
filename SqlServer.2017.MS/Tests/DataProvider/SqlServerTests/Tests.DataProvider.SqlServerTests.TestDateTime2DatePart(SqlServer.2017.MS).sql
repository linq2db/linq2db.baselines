-- SqlServer.2017.MS SqlServer.2017

SELECT
	COUNT(*)
FROM
	[TestDateTime2DatePartTable] [s]
WHERE
	CAST([s].[LastModified] AS Date) = CAST(DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7) AS Date)

