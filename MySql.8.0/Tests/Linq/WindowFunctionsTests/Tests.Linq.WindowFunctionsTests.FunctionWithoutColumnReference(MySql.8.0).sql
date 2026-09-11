-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @rowCount Int32
SET     @rowCount = 9
DECLARE @p Int32
SET     @p = 10

SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	SUM(1) OVER (),
	ROW_NUMBER() OVER (),
	COUNT(*) OVER () = @rowCount AND SUM(`t`.`IntValue`) OVER () > 0,
	COUNT(*) OVER () = @p AND SUM(`t`.`IntValue`) OVER () > 0
FROM
	`WindowFunctionTestEntity` `t`

