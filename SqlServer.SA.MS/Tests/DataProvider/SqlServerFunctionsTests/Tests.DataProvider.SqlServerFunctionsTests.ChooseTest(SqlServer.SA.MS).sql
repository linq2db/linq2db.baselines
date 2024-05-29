BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @b NVarChar(4000) -- String
SET     @b = N'B'

SELECT
	CHOOSE(2, N'A', @b, N'C')

