﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*) > 0
FROM
	[Person] [t1]
WHERE
	NOT ([t1].[MiddleName] <> [t1].[LastName] OR [t1].[MiddleName] IS NULL) OR
	([t1].[MiddleName] <> [t1].[LastName] OR [t1].[MiddleName] IS NULL) IS NULL

