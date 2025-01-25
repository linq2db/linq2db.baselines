﻿--  SqlServer.2017

DELETE [e]
FROM
	[Products] [e]
WHERE
	[e].[IsDeleted] = 0 AND
	(
		SELECT
			COUNT(*)
		FROM
			[Order Details] [e_1]
		WHERE
			[e_1].[IsDeleted] = 0 AND [e].[ProductID] = [e_1].[ProductID]
	) > 0 AND
	[e].[ProductName] LIKE N'a%' ESCAPE N'~' AND
	[e].[ProductName] = N'a'



