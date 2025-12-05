-- SqlServer.2025 SqlServer.2022

SELECT
	VECTORPROPERTY(CAST('[1, 2, 3]' AS VECTOR(3, float32)), 'Dimensions'),
	VECTORPROPERTY(CAST('[1, 2, 3]' AS VECTOR(3, float32)), 'Dimensions'),
	VECTORPROPERTY(CAST('[1, 2, 3]' AS VECTOR(3, float32)), 'BaseType'),
	VECTORPROPERTY(CAST('[1, 2, 3]' AS VECTOR(3, float32)), 'BaseType')

