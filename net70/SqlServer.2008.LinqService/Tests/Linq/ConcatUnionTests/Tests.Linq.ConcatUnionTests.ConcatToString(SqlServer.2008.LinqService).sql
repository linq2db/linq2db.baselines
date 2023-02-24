﻿BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 10
DECLARE @pattern NVarChar(4000) -- String
SET     @pattern = N'%1%'

SELECT TOP (@take)
	[t1].[FirstName]
FROM
	(
		SELECT
			[p].[FirstName]
		FROM
			[Person] [p]
		WHERE
			[p].[FirstName] LIKE N'1'
		UNION ALL
		SELECT
			[p_1].[FirstName]
		FROM
			[Person] [p_1]
		WHERE
			Convert(NVarChar(11), [p_1].[PersonID]) LIKE @pattern ESCAPE N'~'
	) [t1]

