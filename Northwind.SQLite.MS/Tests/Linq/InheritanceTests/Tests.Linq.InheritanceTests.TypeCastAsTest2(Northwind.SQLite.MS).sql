﻿BeforeExecute
--  Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	CASE
		WHEN NOT [p].[Discontinued] THEN 'NULL'
		WHEN [p].[Discontinued] THEN [p].[ProductName]
		ELSE NULL
	END
FROM
	[Products] [p]

