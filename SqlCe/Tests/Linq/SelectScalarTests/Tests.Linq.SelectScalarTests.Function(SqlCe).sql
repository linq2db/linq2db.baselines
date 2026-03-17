-- SqlCe
DECLARE @text NVarChar(3) -- String
SET     @text = '123'

SELECT TOP (1)
	CAST([c_1].[ChildID] AS NVarChar(11)) + ',' + Coalesce(@text, '') as [c1]
FROM
	[Child] [c_1]

