-- Access.Ace.Odbc AccessODBC
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [Database\TestData.ODBC.mdb].[QualifiedIdTable]
(
	[Value]
)
VALUES
(
	?
)

-- Access.Ace.Odbc AccessODBC
SELECT
	@@IDENTITY

