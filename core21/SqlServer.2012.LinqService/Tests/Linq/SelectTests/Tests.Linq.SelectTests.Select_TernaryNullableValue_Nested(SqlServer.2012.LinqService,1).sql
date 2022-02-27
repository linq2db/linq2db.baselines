BeforeExecute
-- SqlServer.2012
DECLARE @Value_2 Int -- Int32
SET     @Value_2 = 1
DECLARE @Value_3 Int -- Int32
SET     @Value_3 = 1
DECLARE @Value_4 Int -- Int32
SET     @Value_4 = 3

SELECT
	IIF(@Value_2 < 2, @Value_3, @Value_4)

