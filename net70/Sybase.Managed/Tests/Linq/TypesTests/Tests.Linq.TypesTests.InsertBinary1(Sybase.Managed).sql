﻿BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @data VarBinary -- Binary
SET     @data = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BinaryValue],
	[BoolValue]
)
VALUES
(
	1001,
	@data,
	1
)

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [LinqDataTypes]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000

