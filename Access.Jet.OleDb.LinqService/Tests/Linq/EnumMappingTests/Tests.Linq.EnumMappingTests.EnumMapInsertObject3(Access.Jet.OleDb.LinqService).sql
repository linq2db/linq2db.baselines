BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 101
DECLARE @TestField Integer -- Int32
SET     @TestField = 12

INSERT INTO [LinqDataTypes]
(
	[ID],
	[BigIntValue]
)
VALUES
(
	@Id,
	@TestField
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[BigIntValue] = 12

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @p

