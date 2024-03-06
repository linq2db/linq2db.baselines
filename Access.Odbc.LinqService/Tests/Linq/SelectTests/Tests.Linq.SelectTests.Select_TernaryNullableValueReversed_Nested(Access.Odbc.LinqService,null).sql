BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = NULL
DECLARE @Parameter1 Int -- Int32
SET     @Parameter1 = 0

SELECT
	CVar(?),
	IIF(1 = 1, CVar(?), 4)

