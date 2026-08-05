-- SqlServer.2016.MS SqlServer.2016
DECLARE @value Int -- Int32
SET     @value = 5

SELECT
	[r].[Id],
	[r].[Field],
	[r].[FieldN],
	[r].[FieldClass]
FROM
	[OperatorTable] [r]
WHERE
	[r].[Field] + 3 = @value AND [r].[FieldN] + 3 = @value AND
	[r].[FieldClass] + 3 = @value

