BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value Int32
SET     @value = 1
DECLARE @p Int32
SET     @p = 1

SELECT
	@value as `c1`,
	CASE
		WHEN 1 = 1 THEN @p
		ELSE 3
	END as `c2`

