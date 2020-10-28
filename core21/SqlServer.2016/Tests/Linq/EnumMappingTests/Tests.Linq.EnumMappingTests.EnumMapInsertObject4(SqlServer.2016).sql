﻿BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @p1 Int -- Int32
SET     @p1 = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p1

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 101
DECLARE @TestField BigInt -- Int64
SET     @TestField = 12
DECLARE @Int32Field Int -- Int32
SET     @Int32Field = NULL

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue],
	[IntValue]
)
VALUES
(
	@Id,
	@TestField,
	@Int32Field
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	Count(*)
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 12

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @p1 Int -- Int32
SET     @p1 = 102

DELETE [r]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p1

