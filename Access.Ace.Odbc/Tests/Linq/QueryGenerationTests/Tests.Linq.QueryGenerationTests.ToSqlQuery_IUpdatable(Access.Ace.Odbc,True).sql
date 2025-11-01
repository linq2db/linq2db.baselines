-- Access.Ace.Odbc AccessODBC
DECLARE @Value Int -- Int32
SET     @Value = 1

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	?
)

-- Access.Ace.Odbc AccessODBC

UPDATE
	[TableWithIdentity] [t1]
SET
	[t1].[Value] = 123

-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

