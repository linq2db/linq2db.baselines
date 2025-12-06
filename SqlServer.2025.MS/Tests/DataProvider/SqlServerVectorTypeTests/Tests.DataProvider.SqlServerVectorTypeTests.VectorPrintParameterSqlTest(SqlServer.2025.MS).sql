-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @vector VECTOR(20) -- Binary
SET     @vector = CAST('[1, 2]' AS VECTOR(2, float32))
-- value above truncated for logging

SELECT
	VECTORPROPERTY(@vector, 'Dimensions')

