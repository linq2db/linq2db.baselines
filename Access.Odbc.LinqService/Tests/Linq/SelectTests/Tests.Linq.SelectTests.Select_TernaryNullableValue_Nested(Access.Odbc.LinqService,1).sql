BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 1
DECLARE @Parameter1 Int -- Int32
SET     @Parameter1 = 1

SELECT
	CVar(?),
	IIF(1 = 1, CVar(?), 3)

