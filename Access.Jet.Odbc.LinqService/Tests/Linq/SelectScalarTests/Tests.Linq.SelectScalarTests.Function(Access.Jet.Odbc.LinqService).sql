﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @text NVarChar(3) -- String
SET     @text = '123'

SELECT TOP 1
	CStr([c_1].[ChildID]) + ',' + CVar(?)
FROM
	[Child] [c_1]

