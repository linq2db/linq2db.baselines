﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [t1]
		WHERE
			[t1].[PersonID] = @ID
	), 1, 0)

