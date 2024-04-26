﻿BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [c_1]
WHERE
	[c_1].[ID] > 1000

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1

INSERT INTO [LinqDataTypes]
(
	[ID],
	[GuidValue],
	[BoolValue]
)
SELECT
	CAST([t2].[c1] + 1001 AS Int),
	NewID(1),
	@BoolValue
FROM
	(
		SELECT DISTINCT
			Floor(CAST([t1].[ID] AS Float) / 3) as [c1]
		FROM
			[LinqDataTypes] [t1]
	) [t2]

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [c_1]
WHERE
	[c_1].[ID] > 1000

