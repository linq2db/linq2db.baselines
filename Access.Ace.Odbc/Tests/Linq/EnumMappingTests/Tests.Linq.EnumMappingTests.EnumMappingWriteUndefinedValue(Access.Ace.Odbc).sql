BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 102

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
	5
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[r].[ID],
	[r].[BigIntValue]
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < ?

