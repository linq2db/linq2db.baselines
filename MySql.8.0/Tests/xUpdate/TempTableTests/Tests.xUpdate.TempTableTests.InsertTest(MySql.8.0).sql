-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Table2`
(
	`ID`
)
SELECT
	`t`.`ID`
FROM
	`Table1` `t`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ID`,
	`t1`.`Date`
FROM
	`Table2` `t1`

