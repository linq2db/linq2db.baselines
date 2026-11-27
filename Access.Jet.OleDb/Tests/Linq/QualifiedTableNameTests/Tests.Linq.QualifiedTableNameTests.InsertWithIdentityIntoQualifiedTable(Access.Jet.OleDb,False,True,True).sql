-- Access.Jet.OleDb AccessOleDb
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO [Database\TestData].[QualifiedIdTable]
(
	[Value]
)
VALUES
(
	@Value
)

-- Access.Jet.OleDb AccessOleDb
SELECT
	@@IDENTITY

