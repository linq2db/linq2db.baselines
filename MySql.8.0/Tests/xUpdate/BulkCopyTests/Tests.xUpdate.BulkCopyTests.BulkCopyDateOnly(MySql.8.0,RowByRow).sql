BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Date Datetime -- DateTime
SET     @Date = '2021-01-01'

INSERT INTO `DateOnlyTable`
(
	`Date`
)
VALUES
(
	@Date
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Date`
FROM
	`DateOnlyTable` `t1`
LIMIT 2

