-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

CREATE TABLE [tempdb]..[#<>f__AnonymousType46`1]
(
	[Vector] VECTOR(3, float32)     NULL
)

INSERT BULK [tempdb]..[#<>f__AnonymousType46`1](Vector)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @Vector Vector(20) -- Binary
SET     @Vector = '[1, 2, 3]'

SELECT
	[t].[Vector],
	VECTOR_NORM([t].[Vector], 'norm1'),
	VECTOR_NORM([t].[Vector], 'norm1'),
	VECTOR_NORM([t].[Vector], 'norm2'),
	VECTOR_NORM([t].[Vector], 'norm2'),
	VECTOR_NORM([t].[Vector], 'norminf'),
	VECTOR_NORM([t].[Vector], 'norminf')
FROM
	[tempdb]..[#<>f__AnonymousType46`1] [t]
ORDER BY
	VECTOR_DISTANCE('cosine', [t].[Vector], @Vector)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#<>f__AnonymousType46`1]

