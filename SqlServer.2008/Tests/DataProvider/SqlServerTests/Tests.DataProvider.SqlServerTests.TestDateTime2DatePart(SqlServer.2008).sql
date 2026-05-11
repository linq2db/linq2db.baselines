-- SqlServer.2008

SELECT
	COUNT(*)
FROM
	[TestDateTime2DatePartTable] [s]
WHERE
	CAST([s].[LastModified] AS Date) = CAST(CAST('2020-02-29T17:54:55.1231234' AS DATETIME2) AS Date)

