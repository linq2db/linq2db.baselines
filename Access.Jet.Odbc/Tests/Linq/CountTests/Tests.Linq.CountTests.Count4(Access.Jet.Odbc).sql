﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

