﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Field2]
FROM
	[Table2] [t1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Table1] [x]
		WHERE
			[t1].[Field2] = [x].[Field2] AND CAST([x].[Field1] AS BigInt) IN (1, 2, 3)
	)

