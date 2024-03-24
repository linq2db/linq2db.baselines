BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[t1].[OrderDate]
FROM
	[Orders] [t1]
GROUP BY
	[t1].[OrderDate]
HAVING
	Count(*) > 5

