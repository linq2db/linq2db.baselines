-- Sybase.Managed Sybase
DECLARE @text UniVarChar(3) -- String
SET     @text = '123'

SELECT TOP 1
	CASE WHEN CAST([c_1].[ChildID] AS NVarChar(11)) IS NULL OR ',' IS NULL OR Coalesce(@text, '') IS NULL THEN NULL ELSE CAST([c_1].[ChildID] AS NVarChar(11)) + ',' + Coalesce(@text, '') END
FROM
	[Child] [c_1]

