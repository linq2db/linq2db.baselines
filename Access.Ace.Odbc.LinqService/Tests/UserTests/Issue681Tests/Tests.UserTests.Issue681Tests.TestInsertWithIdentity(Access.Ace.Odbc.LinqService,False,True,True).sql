BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [Database\TestData.ODBC.mdb].[Issue681Table4]
(
	[Value]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT @@IDENTITY

