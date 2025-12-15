-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Table2`
(
	`ID`
)
SELECT
	`t`.`ID`
FROM
	`Table1` `t`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ID`,
	`t1`.`Date`
FROM
	`Table2` `t1`

