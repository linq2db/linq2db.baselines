BeforeExecute
-- Sybase.Managed Sybase
DECLARE @text UniVarChar(3) -- String
SET     @text = '123'

SELECT TOP 1
	CAST([c_1].[ChildID] AS NVarChar(11)) + ',' + Coalesce(@text, '')
FROM
	[Child] [c_1]

