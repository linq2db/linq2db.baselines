-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @vector VECTOR(20) -- Binary
SET     @vector = '[1, 2, 3]'

SELECT
	VECTORPROPERTY(@vector, 'Dimensions'),
	VECTORPROPERTY(@vector, 'Dimensions'),
	VECTORPROPERTY(@vector, 'BaseType'),
	VECTORPROPERTY(@vector, 'BaseType')

