﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 2
DECLARE @ID_1 Int -- Int32
SET     @ID_1 = 3

SELECT
	[n].[FirstName],
	[n].[PersonID]
FROM
	[Person] [t1]
		INNER JOIN (VALUES
			(N'Janet',@ID), (N'Doe',@ID_1)
		) [n]([FirstName], [PersonID]) ON [t1].[PersonID] = [n].[PersonID]
ORDER BY
	[n].[PersonID]

