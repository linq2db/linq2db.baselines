BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 1

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

UPDATE
	[TableWithIdentity] [t1]
SET
	[t1].[Value] = 123

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

