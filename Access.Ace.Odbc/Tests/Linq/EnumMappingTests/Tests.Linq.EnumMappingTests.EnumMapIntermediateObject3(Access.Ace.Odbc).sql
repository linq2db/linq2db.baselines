﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue]
)
VALUES
(
	101,
	12
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND
	[r].[ID] IS NOT NULL AND
	[r].[BigIntValue] = 12 AND
	[r].[BigIntValue] IS NOT NULL

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < ?

