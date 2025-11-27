-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

CREATE TABLE [tempdb]..[#<>f__AnonymousType46`1]
(
	[Vector] VECTOR(3, float32)     NULL
)

INSERT BULK [tempdb]..[#<>f__AnonymousType46`1](Vector)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @Vector Vector(20) -- Binary
SET     @Vector = '[1, 2, 3]'
DECLARE @Vector_1 Vector(20) -- Binary
SET     @Vector_1 = '[1, 2, 3]'

SELECT
	[t].[Vector],
	VECTOR_DISTANCE('cosine', [t].[Vector], @Vector),
	VECTOR_DISTANCE('cosine', [t].[Vector], @Vector),
	VECTOR_DISTANCE('cosine', [t].[Vector], @Vector_1),
	VECTOR_DISTANCE('euclidean', [t].[Vector], @Vector_1),
	VECTOR_DISTANCE('dot', [t].[Vector], @Vector_1)
FROM
	[tempdb]..[#<>f__AnonymousType46`1] [t]
ORDER BY
	VECTOR_DISTANCE('cosine', [t].[Vector], @Vector)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#<>f__AnonymousType46`1]

