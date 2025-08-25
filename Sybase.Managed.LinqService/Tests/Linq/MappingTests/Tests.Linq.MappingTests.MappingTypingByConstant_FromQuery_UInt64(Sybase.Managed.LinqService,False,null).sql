﻿BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @value UnsignedBigInt -- UInt64
SET     @value = NULL

SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			CAST(@value AS Decimal) as [Value_1]
		FROM
			[Person] [r]
	) [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @value UnsignedBigInt -- UInt64
SET     @value = 2147483648

SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[r].[PersonID] as [ID],
			@value as [Value_1]
		FROM
			[Person] [r]
	) [t1]

