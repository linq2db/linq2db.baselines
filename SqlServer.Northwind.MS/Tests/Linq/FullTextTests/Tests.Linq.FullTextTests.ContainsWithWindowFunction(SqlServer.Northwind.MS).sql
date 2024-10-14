BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	MAX([t2].[CategoryName]) OVER(PARTITION BY 1)
FROM
	(
		SELECT
			[t1].[CategoryName]
		FROM
			[Categories] [t1]
		WHERE
			CONTAINS(([t1].*), N'candy OR meat')
	) [t2]

