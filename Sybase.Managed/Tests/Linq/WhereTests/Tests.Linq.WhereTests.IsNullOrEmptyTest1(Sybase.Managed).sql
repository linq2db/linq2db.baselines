﻿BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[nm].[MiddleName]
FROM
	[Person] [nm]
WHERE
	NOT ([nm].[MiddleName] IS NULL OR '' = [nm].[MiddleName] OR CHAR_LENGTH([nm].[MiddleName]) = 0 AND ('' <> [nm].[MiddleName] OR [nm].[MiddleName] IS NULL))

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

