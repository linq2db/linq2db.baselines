﻿BeforeExecute
--  SqlServer.2005

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT N'Doe' AS [item]) [n] ON [p].[LastName] = [n].[item]

