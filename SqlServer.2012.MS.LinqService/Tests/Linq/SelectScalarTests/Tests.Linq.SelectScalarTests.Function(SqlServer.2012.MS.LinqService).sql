﻿BeforeExecute
--  SqlServer.2012.MS SqlServer.2012
DECLARE @text NVarChar(4000) -- String
SET     @text = N'123'

SELECT TOP (1)
	CAST([c_1].[ChildID] AS VarChar(11)) + N',' + @text
FROM
	[Child] [c_1]

