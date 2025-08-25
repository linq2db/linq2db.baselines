﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[a_Person].[personid],
	[a_Person].[personname],
	MAX([f].[added])
FROM
	[activity649] [f]
		INNER JOIN [person649] [a_Person] ON ([f].[personid] = [a_Person].[personid])
WHERE
	[f].[added] >= DateSerial(2017, 1, 1)
GROUP BY
	[a_Person].[personid],
	[a_Person].[personname]

