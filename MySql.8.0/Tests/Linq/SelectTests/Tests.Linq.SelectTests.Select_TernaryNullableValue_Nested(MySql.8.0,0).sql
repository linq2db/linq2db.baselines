BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value Int32
SET     @value = 0
DECLARE @p Int32
SET     @p = 0

SELECT
	@value as `c1`,
	CASE
		WHEN 1 = 1 THEN @p
		ELSE 2
	END as `c2`

