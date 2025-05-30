﻿BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 2
DECLARE @ID_1 Int -- Int32
SET     @ID_1 = 3

SELECT
	[n].[ID],
	[n].[FirstName]
FROM
	[Person] [t1]
		INNER JOIN (
			SELECT @ID AS [ID], 'Janet' AS [FirstName]
			UNION ALL
			SELECT @ID_1 AS [ID], 'Doe' AS [FirstName]) [n] ON [t1].[PersonID] = [n].[ID]
ORDER BY
	[n].[ID]

