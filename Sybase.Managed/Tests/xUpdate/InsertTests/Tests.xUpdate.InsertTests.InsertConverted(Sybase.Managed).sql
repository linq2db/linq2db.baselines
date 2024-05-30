BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 1000

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @tt BigInt -- Int64
SET     @tt = 600000000

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue]
)
VALUES
(
	1001,
	@tt
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[t].[ID],
	[t].[BigIntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1001

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 1000

