﻿BeforeExecute
--  Sybase.Managed Sybase
DECLARE @text UniVarChar(3) -- String
SET     @text = '123'

SELECT TOP 1
	CAST([c_1].[ChildID] AS VarChar(11)) + ',' + @text
FROM
	[Child] [c_1]

