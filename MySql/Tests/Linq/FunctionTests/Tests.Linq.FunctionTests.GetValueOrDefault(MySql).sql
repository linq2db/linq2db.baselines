BeforeExecute
-- MySql MySql.Official MySql
DECLARE @p Int32
SET     @p = 0
DECLARE @p_1 Int32
SET     @p_1 = 0

SELECT
	CASE
		WHEN `p`.`Value1` IS NULL THEN @p
		ELSE `p`.`Value1`
	END
FROM
	`Parent` `p`
WHERE
	CASE
		WHEN `p`.`Value1` IS NULL THEN @p_1
		ELSE `p`.`Value1`
	END > 0

