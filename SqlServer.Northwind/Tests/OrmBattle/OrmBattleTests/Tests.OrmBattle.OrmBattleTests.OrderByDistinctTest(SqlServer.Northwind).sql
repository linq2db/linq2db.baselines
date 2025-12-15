-- SqlServer.Northwind SqlServer.2019

SELECT
	[c_2].[City]
FROM
	(
		SELECT DISTINCT
			[c_1].[City]
		FROM
			[Customers] [c_1]
	) [c_2]
ORDER BY
	[c_2].[City]

