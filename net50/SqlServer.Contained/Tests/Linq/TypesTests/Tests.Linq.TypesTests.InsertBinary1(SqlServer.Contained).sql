﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

DELETE [t1]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @data_1 VarBinary(8000) -- Binary
SET     @data_1 = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BinaryValue],
	[BoolValue]
)
VALUES
(
	1001,
	@data_1,
	1
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DELETE [t1]
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] > 1000

