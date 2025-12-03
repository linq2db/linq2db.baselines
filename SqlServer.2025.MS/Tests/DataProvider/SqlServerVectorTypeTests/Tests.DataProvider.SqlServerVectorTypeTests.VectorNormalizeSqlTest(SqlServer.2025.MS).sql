-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

CREATE TABLE [tempdb]..[#<>f__AnonymousType46`1]
(
	[Vector] VECTOR(3, float32) NOT NULL
)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

INSERT INTO [tempdb]..[#<>f__AnonymousType46`1]
(
	[Vector]
)
VALUES
('[1, 2, 3]'),
('[4, 5, 6]')

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @Vector VECTOR(20) -- Binary
SET     @Vector = '[1, 2, 3]'

SELECT
	[t].[Vector],
	VECTOR_NORMALIZE([t].[Vector], 'norm1'),
	VECTOR_NORMALIZE([t].[Vector], 'norm1'),
	VECTOR_NORMALIZE([t].[Vector], 'norm2'),
	VECTOR_NORMALIZE([t].[Vector], 'norm2'),
	VECTOR_NORMALIZE([t].[Vector], 'norminf'),
	VECTOR_NORMALIZE([t].[Vector], 'norminf')
FROM
	[tempdb]..[#<>f__AnonymousType46`1] [t]
ORDER BY
	VECTOR_DISTANCE('cosine', [t].[Vector], @Vector)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#<>f__AnonymousType46`1]

