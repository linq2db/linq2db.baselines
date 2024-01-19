BeforeExecute
-- test-linq-service-reader MySql.Official MySql
DECLARE @p Datetime -- DateTime
SET     @p = '2012-12-12 12:12:12'
DECLARE @take Int32
SET     @take = 2

SELECT
	`t1`.`Value`
FROM
	(
		SELECT Cast(@p as datetime) as Value
	) `t1`
LIMIT @take

BeforeExecute
-- test-linq-service-reader MySql.Official MySql
DECLARE @p Datetime -- DateTime
SET     @p = '2012-12-12 12:12:12'
DECLARE @take Int32
SET     @take = 2

SELECT
	`t1`.`Value`
FROM
	(
		SELECT Cast(@p as datetime) as Value
	) `t1`
LIMIT @take

