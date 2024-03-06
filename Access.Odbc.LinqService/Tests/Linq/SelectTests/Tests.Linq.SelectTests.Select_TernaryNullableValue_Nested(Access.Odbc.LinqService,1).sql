BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @value Int -- Int32
SET     @value = 1
DECLARE @Parameter1 Int -- Int32
SET     @Parameter1 = 1
DECLARE @Parameter2 Int -- Int32
SET     @Parameter2 = 3

SELECT
	CVar(?),
	IIF(1 = 1, CVar(?), CVar(?))

