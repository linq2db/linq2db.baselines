BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 123

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

