﻿BeforeExecute
-- Sybase.Managed Sybase
DECLARE @n Integer -- Int32
SET     @n = 1
DECLARE @n_1 Integer -- Int32
SET     @n_1 = 1

SELECT
	[p].[PersonID] + @n,
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @n_1

