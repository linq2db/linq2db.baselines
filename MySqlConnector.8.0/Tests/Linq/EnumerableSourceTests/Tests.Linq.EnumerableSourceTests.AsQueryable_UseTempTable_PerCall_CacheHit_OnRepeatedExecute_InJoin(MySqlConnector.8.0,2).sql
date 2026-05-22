-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TEMPORARY TABLE `T_4f59cbbf94aa`
(
	`Id`   INT           NOT NULL,
	`Data` VARCHAR(4000)     NULL
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `T_4f59cbbf94aa`
(
	`Id`,
	`Data`
)
VALUES
(20,'Data 20'),
(21,'Data 21'),
(22,'Data 22')

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
		INNER JOIN `T_4f59cbbf94aa` `r` ON `p`.`PersonID` = `r`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TEMPORARY TABLE IF EXISTS `T_4f59cbbf94aa`

