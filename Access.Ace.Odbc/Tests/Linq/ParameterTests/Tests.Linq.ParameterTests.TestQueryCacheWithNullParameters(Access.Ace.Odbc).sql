﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	1 = 0

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = ?

