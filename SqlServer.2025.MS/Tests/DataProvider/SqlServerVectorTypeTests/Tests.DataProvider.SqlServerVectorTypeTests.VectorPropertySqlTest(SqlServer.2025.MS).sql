-- SqlServer.2025.MS SqlServer.2025
DECLARE @vector VECTOR(20) -- Binary
SET     @vector = CAST('[1, 2, 3]' AS VECTOR(1, float32))

SELECT
	VECTORPROPERTY(@vector, 'Dimensions'),
	VECTORPROPERTY(@vector, 'Dimensions'),
	VECTORPROPERTY(@vector, 'BaseType'),
	VECTORPROPERTY(@vector, 'BaseType')

