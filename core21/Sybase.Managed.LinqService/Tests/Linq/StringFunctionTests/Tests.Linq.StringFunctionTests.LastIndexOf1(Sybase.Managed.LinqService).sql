﻿BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p1 Bit -- Boolean
SET     @p1 = 0
DECLARE @Length_1 Integer -- Int32
SET     @Length_1 = 1

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CASE
		WHEN @p1 = 1 THEN Len([p].[LastName]) - 1
		WHEN CharIndex('p', [p].[LastName]) = 0
			THEN -1
		ELSE (Len([p].[LastName]) - CharIndex('p', Reverse([p].[LastName]))) - @Length_1 + 1
	END = 2 AND
	[p].[PersonID] = 1

