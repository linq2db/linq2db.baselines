BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Date_1 DateTime
SET     @Date_1 = '2020-02-29T00:00:00'

SELECT
	DATEADD(Day, 1, @Date_1)

