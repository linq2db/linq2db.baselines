-- SqlServer.2025 SqlServer.2022

SELECT
	[t].[Vector],
	VECTOR_NORMALIZE([t].[Vector], 'norm1'),
	VECTOR_NORMALIZE([t].[Vector], 'norm1'),
	VECTOR_NORMALIZE([t].[Vector], 'norm2'),
	VECTOR_NORMALIZE([t].[Vector], 'norm2'),
	VECTOR_NORMALIZE([t].[Vector], 'norminf'),
	VECTOR_NORMALIZE([t].[Vector], 'norminf')
FROM
	[VectorTable] [t]
ORDER BY
	VECTOR_DISTANCE('cosine', [t].[Vector], CAST('[1, 2, 3]' AS VECTOR(3, float32)))

