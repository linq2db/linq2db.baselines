-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @text NVarChar(3) -- String
SET     @text = '123'

SELECT TOP 1
	CStr([c_1].[ChildID]) + ',' + @text
FROM
	[Child] [c_1]

