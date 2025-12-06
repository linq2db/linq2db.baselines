-- Access.Ace.Odbc AccessODBC
DECLARE @Value Int -- Int32
SET     @Value = 1

INSERT INTO [TableWithIdentitySrc]
(
	[Value]
)
VALUES
(
	?
)

-- Access.Ace.Odbc AccessODBC

INSERT INTO [TableWithIdentity]
(
	[Id],
	[Value]
)
SELECT
	345,
	[t1].[Value] + 123
FROM
	[TableWithIdentitySrc] [t1]

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

