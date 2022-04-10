﻿BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @Id

BeforeExecute
-- SqlServer.2012

INSERT INTO [LinqDataTypes]
(
	[ID],
	[IntValue]
)
VALUES
(
	101,
	3
)

BeforeExecute
-- SqlServer.2012

UPDATE
	[r]
SET
	[r].[IntValue] = 4
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[IntValue] = 3

BeforeExecute
-- SqlServer.2012

SELECT
	Count(*)
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[IntValue] = 4

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @Id

