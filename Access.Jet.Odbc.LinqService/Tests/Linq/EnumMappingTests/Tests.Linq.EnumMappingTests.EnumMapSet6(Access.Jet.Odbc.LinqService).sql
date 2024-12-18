﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC

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
-- Access.Jet.Odbc AccessODBC

UPDATE
	[LinqDataTypes] [r]
SET
	[r].[IntValue] = 4
WHERE
	[r].[ID] = 101 AND
	[r].[ID] IS NOT NULL AND
	[r].[IntValue] = 3 AND
	[r].[IntValue] IS NOT NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[IntValue] = 4

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < ?

