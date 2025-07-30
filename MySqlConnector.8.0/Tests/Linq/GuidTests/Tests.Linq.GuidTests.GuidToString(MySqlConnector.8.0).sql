BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Lower(CAST(`t`.`Id` AS CHAR(36)))
FROM
	`TableWithGuid` `t`
LIMIT 1

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`Id`,
	`t`.`NullableGuid`
FROM
	`TableWithGuid` `t`
WHERE
	LOCATE('63d-0f', Lower(CAST(`t`.`Id` AS CHAR(36)))) > 0

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`Id`,
	`t`.`NullableGuid`
FROM
	`TableWithGuid` `t`
WHERE
	Lower(CAST(`t`.`Id` AS CHAR(36))) LIKE 'bc7b6%' ESCAPE '~'

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`Id`,
	`t`.`NullableGuid`
FROM
	`TableWithGuid` `t`
WHERE
	LOCATE('8f4-53', Lower(CAST(`t`.`Id` AS CHAR(36)))) > 0

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`Id`,
	`t`.`NullableGuid`
FROM
	`TableWithGuid` `t`
WHERE
	Lower(CAST(`t`.`Id` AS CHAR(36))) LIKE '8f4-53%' ESCAPE '~'

