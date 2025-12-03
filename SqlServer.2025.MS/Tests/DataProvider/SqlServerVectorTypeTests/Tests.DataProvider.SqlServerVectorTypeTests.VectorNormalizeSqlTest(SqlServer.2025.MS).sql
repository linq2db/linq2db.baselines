-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @Vector VECTOR(20) -- Binary
SET     @Vector = CAST('[1, 2, 3]' AS VECTOR(1, float32))

SELECT
	[t].[Vector],
	VECTOR_NORMALIZE([t].[Vector], 'norm1'),
	VECTOR_NORMALIZE([t].[Vector], 'norm1'),
	VECTOR_NORMALIZE([t].[Vector], 'norm2'),
	VECTOR_NORMALIZE([t].[Vector], 'norm2'),
	VECTOR_NORMALIZE([t].[Vector], 'norminf'),
	VECTOR_NORMALIZE([t].[Vector], 'norminf')
FROM
	[SqlVectorTable] [t]
ORDER BY
	VECTOR_DISTANCE('cosine', [t].[Vector], @Vector)

