-- SqlServer.2025.MS SqlServer.2025
DECLARE @Vector VECTOR(20) -- Binary
SET     @Vector = CAST('[1, 2, 3]' AS VECTOR(1, float32))
DECLARE @Vector_1 VECTOR(20) -- Binary
SET     @Vector_1 = CAST('[1, 2, 3]' AS VECTOR(1, float32))

SELECT
	[t].[Vector],
	VECTOR_DISTANCE('cosine', [t].[Vector], @Vector),
	VECTOR_DISTANCE('cosine', [t].[Vector], @Vector),
	VECTOR_DISTANCE('cosine', [t].[Vector], @Vector_1),
	VECTOR_DISTANCE('euclidean', [t].[Vector], @Vector),
	VECTOR_DISTANCE('euclidean', [t].[Vector], @Vector_1),
	VECTOR_DISTANCE('dot', [t].[Vector], @Vector_1),
	VECTOR_DISTANCE('dot', [t].[Vector], @Vector)
FROM
	[SqlVectorTable] [t]
ORDER BY
	VECTOR_DISTANCE('cosine', [t].[Vector], @Vector)

