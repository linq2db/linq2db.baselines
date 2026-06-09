-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Lower(CAST(`t`.`Id` AS CHAR(36)))
FROM
	`TableWithGuid` `t`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`Id`
FROM
	`TableWithGuid` `t`
WHERE
	Lower(CAST(`t`.`Id` AS CHAR(36))) = 'x'

