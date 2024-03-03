BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @Id

BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb
DECLARE @Int32Field Integer -- Int32
SET     @Int32Field = 4

UPDATE
	[LinqDataTypes] [r]
SET
	[r].[IntValue] = @Int32Field
WHERE
	([r].[ID] = 101) AND ([r].[IntValue] = 3)

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] = 101 AND [r].[IntValue] = 4

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 102

DELETE FROM
	[LinqDataTypes] [r]
WHERE
	[r].[ID] >= 101 AND [r].[ID] < @Id

