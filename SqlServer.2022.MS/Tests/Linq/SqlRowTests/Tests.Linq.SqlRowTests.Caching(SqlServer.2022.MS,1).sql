﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @r3 Int -- Int32
SET     @r3 = 1

SELECT
	COUNT(*)
FROM
	[Ints] [i]
WHERE
	[i].[Two] = [i].[One] * 2 AND [i].[Three] = @r3

