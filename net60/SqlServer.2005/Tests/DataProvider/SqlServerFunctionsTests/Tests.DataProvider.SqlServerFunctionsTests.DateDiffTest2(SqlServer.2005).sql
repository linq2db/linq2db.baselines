BeforeExecute
-- SqlServer.2005
DECLARE @Date_1 DateTime
SET     @Date_1 = '2020-02-29T00:00:00'
DECLARE @p_1 DateTime
SET     @p_1 = '2021-02-28T00:00:00'

SELECT
	DATEDIFF(Month, @Date_1, @p_1)

