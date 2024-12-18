﻿BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	IIF([p].[ProductID] IS NULL, N'Nothing!', [p].[ProductName]),
	[c_1].[CategoryName]
FROM
	[Categories] [c_1]
		LEFT JOIN [Products] [p]
			LEFT JOIN [Categories] [a_Category] ON [p].[CategoryID] = [a_Category].[CategoryID] AND [p].[CategoryID] IS NOT NULL
		ON [c_1].[CategoryID] = [a_Category].[CategoryID] AND [a_Category].[CategoryID] IS NOT NULL

