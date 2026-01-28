-- SqlServer.2012.MS SqlServer.2012
DECLARE @value Int -- Int32
SET     @value = -2

SELECT
	[r].[Id],
	[r].[Field],
	[r].[FieldN],
	[r].[FieldClass]
FROM
	[OperatorTable] [r]
WHERE
	-[r].[Field] = @value AND -[r].[FieldN] = @value AND
	-[r].[FieldClass] = @value

