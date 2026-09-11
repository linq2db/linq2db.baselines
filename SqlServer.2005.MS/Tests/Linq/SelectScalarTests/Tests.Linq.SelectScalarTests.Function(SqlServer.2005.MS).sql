-- SqlServer.2005.MS SqlServer.2005
DECLARE @text NVarChar(4000) -- String
SET     @text = N'123'

SELECT TOP (1)
	CAST([c_1].[ChildID] AS NVarChar(11)) + N',' + Coalesce(@text, N'')
FROM
	[Child] [c_1]

