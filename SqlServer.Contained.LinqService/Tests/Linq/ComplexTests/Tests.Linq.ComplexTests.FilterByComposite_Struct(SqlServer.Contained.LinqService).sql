﻿BeforeExecute
--  SqlServer.Contained SqlServer.2019

SELECT TOP (2)
	[u].[user_name],
	[u].[city],
	[u].[street],
	[u].[building_number]
FROM
	[UserStruct] [u]
WHERE
	[u].[city] = N'Springwood' AND [u].[street] = N'Elm Street' AND
	[u].[building_number] = 13

