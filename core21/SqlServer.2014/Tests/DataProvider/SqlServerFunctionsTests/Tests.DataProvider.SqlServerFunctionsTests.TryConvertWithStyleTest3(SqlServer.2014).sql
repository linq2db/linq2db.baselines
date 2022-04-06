BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @p_1 DateTime2
SET     @p_1 = '2022-02-22T00:00:00.0000000'

SELECT
	TRY_CONVERT(nvarchar(10), @p_1, 105)

