﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT
	COUNT(*) > 0
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @ID

