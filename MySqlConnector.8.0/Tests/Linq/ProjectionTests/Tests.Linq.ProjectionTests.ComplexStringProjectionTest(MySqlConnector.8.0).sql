-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @data VarChar -- String
SET     @data = NULL

INSERT INTO `StringTestTable`
(
	`ID`,
	`Data`
)
VALUES
(
	2,
	@data
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`ID`,
	`t`.`Data`
FROM
	`StringTestTable` `t`
WHERE
	`t`.`ID` = 2
LIMIT 2

