-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Lower(CAST(`t`.`Id` AS CHAR(36)))
FROM
	`TableWithGuid` `t`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`
FROM
	`TableWithGuid` `t`
WHERE
	Lower(CAST(`t`.`Id` AS CHAR(36))) = 'x'

