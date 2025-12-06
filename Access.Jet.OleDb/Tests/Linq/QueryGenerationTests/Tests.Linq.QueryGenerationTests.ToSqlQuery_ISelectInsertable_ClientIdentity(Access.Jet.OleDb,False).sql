-- Access.Jet.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 1

INSERT INTO [TableWithIdentitySrc]
(
	[Value]
)
VALUES
(
	@Value
)

-- Access.Jet.OleDb AccessOleDb
DECLARE @addition Integer -- Int32
SET     @addition = 123

INSERT INTO [TableWithIdentity]
(
	[Id],
	[Value]
)
SELECT
	345,
	[t1].[Value] + @addition
FROM
	[TableWithIdentitySrc] [t1]

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

