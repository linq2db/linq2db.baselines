BeforeExecute
-- SqlServer.2005
DECLARE @p_1 DateTime
SET     @p_1 = '2022-02-22T00:00:00'

SELECT
	CONVERT(NVarChar(4000), @p_1, 5)

