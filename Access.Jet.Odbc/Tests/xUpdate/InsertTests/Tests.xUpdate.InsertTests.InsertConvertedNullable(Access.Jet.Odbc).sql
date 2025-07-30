BeforeExecute
-- Access.Jet.Odbc AccessODBC

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 1000

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @tt Int -- Int32
SET     @tt = 600000000

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue]
)
VALUES
(
	1001,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 1
	[t].[ID],
	[t].[BigIntValue]
FROM
	[LinqDataTypes] [t]
WHERE
	[t].[ID] = 1001

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 1000

