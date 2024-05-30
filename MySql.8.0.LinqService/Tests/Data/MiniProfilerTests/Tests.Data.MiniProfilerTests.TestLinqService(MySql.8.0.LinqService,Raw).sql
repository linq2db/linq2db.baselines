BeforeExecute
-- test-linq-service-reader MySql MySql80
DECLARE @p Datetime -- DateTime
SET     @p = '2012-12-12 12:12:12'

SELECT
	`t1`.`Value`
FROM
	(
		SELECT Cast(@p as datetime) as Value
	) `t1`
LIMIT 2

BeforeExecute
-- test-linq-service-reader MySql MySql80
DECLARE @p Datetime -- DateTime
SET     @p = '2012-12-12 12:12:12'

SELECT
	`t1`.`Value`
FROM
	(
		SELECT Cast(@p as datetime) as Value
	) `t1`
LIMIT 2

