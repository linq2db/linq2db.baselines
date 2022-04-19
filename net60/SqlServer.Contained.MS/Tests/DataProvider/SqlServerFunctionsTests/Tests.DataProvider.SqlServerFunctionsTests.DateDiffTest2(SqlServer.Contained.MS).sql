BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Date_1 DateTime2
SET     @Date_1 = '2020-02-29T00:00:00.0000000'
DECLARE @p_1 DateTime2
SET     @p_1 = '2021-02-28T00:00:00.0000000'

SELECT
	DATEDIFF(Month, @Date_1, @p_1)

