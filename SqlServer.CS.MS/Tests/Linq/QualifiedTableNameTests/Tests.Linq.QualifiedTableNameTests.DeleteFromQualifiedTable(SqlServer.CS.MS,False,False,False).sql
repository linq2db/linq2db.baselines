-- SqlServer.CS.MS SqlServer.2025
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE [t1]
FROM
	[QualifiedNameTable] [t1]
WHERE
	[t1].[ID] = @ID

