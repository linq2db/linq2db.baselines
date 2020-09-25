BeforeExecute
-- SqlServer.2012
DECLARE @Value_2 Int -- Int32
SET     @Value_2 = 0
DECLARE @Value_3 Int -- Int32
SET     @Value_3 = 0

SELECT
	IIF(@Value_2 < 2, @Value_3, 2)

