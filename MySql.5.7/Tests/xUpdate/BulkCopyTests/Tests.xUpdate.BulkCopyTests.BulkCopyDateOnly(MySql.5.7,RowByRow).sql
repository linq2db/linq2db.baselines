-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Date`
FROM
	`DateOnlyTable` `t1`
LIMIT 2

