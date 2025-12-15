-- SqlServer.2025

SELECT
	[t].[Vector],
	VECTOR_DISTANCE('cosine', [t].[Vector], CAST('[1, 2, 3]' AS VECTOR(3, float32))),
	VECTOR_DISTANCE('cosine', [t].[Vector], CAST('[1, 2, 3]' AS VECTOR(3, float32))),
	VECTOR_DISTANCE('cosine', [t].[Vector], CAST('[1, 2, 3]' AS VECTOR(3, float32))),
	VECTOR_DISTANCE('euclidean', [t].[Vector], CAST('[1, 2, 3]' AS VECTOR(3, float32))),
	VECTOR_DISTANCE('euclidean', [t].[Vector], CAST('[1, 2, 3]' AS VECTOR(3, float32))),
	VECTOR_DISTANCE('dot', [t].[Vector], CAST('[1, 2, 3]' AS VECTOR(3, float32))),
	VECTOR_DISTANCE('dot', [t].[Vector], CAST('[1, 2, 3]' AS VECTOR(3, float32)))
FROM
	[VectorTable] [t]
ORDER BY
	VECTOR_DISTANCE('cosine', [t].[Vector], CAST('[1, 2, 3]' AS VECTOR(3, float32)))

