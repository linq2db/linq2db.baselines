BeforeExecute
-- SqlServer.2012
DECLARE @b NVarChar(4000) -- String
SET     @b = N'B'

SELECT
	CHOOSE(2, N'A', @b, N'C')

