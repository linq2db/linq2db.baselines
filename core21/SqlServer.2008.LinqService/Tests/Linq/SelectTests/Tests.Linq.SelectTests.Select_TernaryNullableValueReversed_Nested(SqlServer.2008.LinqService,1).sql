BeforeExecute
-- SqlServer.2008
DECLARE @Value_2 Int -- Int32
SET     @Value_2 = 1
DECLARE @Value_3 Int -- Int32
SET     @Value_3 = 1
DECLARE @Value_4 Int -- Int32
SET     @Value_4 = 5

SELECT
	CASE
		WHEN @Value_2 < 2 THEN @Value_3
		ELSE @Value_4
	END

