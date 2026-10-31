-- Access.Ace.OleDb AccessOleDb
DECLARE @code Integer -- Int32
SET     @code = 1
DECLARE @site Integer -- Int32
SET     @site = 2

SELECT
	[f].[StringValue]
FROM
	[LinqDataTypes] [x],
	[LinqDataTypes] [o],
	[LinqDataTypes] [u],
	[LinqDataTypes] [r],
	[LinqDataTypes] [f]
WHERE
	[x].[BoolValue] = False AND
	[x].[IntValue] = @code AND
	[x].[IntValue] = @site AND
	[o].[BoolValue] = False AND
	([x].[IntValue] = [o].[IntValue] OR [x].[IntValue] IS NULL AND [o].[IntValue] IS NULL) AND
	[u].[BoolValue] = False AND
	([o].[IntValue] = [u].[IntValue] OR [o].[IntValue] IS NULL AND [u].[IntValue] IS NULL) AND
	([u].[IntValue] = [r].[IntValue] OR [u].[IntValue] IS NULL AND [r].[IntValue] IS NULL) AND
	[r].[BoolValue] = False AND
	([r].[IntValue] = [f].[IntValue] OR [r].[IntValue] IS NULL AND [f].[IntValue] IS NULL) AND
	([f].[StringValue] NOT IN (11, 18, 19, 20, 21, 22, 23, 24, 26, 29, 28) OR [f].[StringValue] IS NULL)

