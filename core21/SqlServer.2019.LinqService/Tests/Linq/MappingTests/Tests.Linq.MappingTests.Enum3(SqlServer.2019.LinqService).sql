﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @fm Char(1) -- AnsiStringFixedLength
SET     @fm = N'F'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[Gender] <> @fm

