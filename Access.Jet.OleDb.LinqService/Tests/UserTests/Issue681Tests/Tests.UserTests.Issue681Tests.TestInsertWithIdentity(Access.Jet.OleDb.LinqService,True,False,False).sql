BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @Value Integer -- Int32
SET     @Value = 10

INSERT INTO [Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT @@IDENTITY

