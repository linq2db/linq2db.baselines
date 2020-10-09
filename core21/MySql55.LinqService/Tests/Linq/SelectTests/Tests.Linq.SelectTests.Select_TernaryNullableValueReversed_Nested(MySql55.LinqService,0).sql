BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Value_2 Int32
SET     @Value_2 = 0
DECLARE @Value_3 Int32
SET     @Value_3 = 0

SELECT 
	CASE
		WHEN @Value_2 < 2 THEN @Value_3
		ELSE 4
	END as `c1`

