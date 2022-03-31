BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @p_1 DateTime2
SET     @p_1 = '2022-02-22T00:00:00.0000000'

SELECT
	TRY_CONVERT(NVarChar(4000), @p_1, 5)

