﻿BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT
	IIF(Count(*) > 0, True, False)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = ?

