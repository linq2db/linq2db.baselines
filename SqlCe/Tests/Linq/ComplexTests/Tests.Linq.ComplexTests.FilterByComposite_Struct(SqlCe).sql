﻿BeforeExecute
-- SqlCe

SELECT TOP (2)
	[u].[user_name] as [Name],
	[u].[city] as [City],
	[u].[street] as [Street],
	[u].[building_number] as [Building]
FROM
	[UserStruct] [u]
WHERE
	[u].[city] = 'Springwood' AND [u].[street] = 'Elm Street' AND
	[u].[building_number] = 13

