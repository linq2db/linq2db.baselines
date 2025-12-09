-- SqlServer.2025

SELECT
	[t].[Vector],
	VECTOR_NORM([t].[Vector], 'norm1'),
	VECTOR_NORM([t].[Vector], 'norm1'),
	VECTOR_NORM([t].[Vector], 'norm2'),
	VECTOR_NORM([t].[Vector], 'norm2'),
	VECTOR_NORM([t].[Vector], 'norminf'),
	VECTOR_NORM([t].[Vector], 'norminf')
FROM
	[VectorTable] [t]
ORDER BY
	VECTOR_DISTANCE('cosine', [t].[Vector], CAST('[1, 2, 3]' AS VECTOR(3, float32)))

