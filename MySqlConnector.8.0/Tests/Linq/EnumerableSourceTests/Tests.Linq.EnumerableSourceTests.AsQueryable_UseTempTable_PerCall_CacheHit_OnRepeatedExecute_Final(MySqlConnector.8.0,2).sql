-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TEMPORARY TABLE `T_6b671b8818fe`
(
	`Id`   INT           NOT NULL,
	`Data` VARCHAR(4000)     NULL
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `T_6b671b8818fe`
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
	`t1`.`Id`,
	`t1`.`Data`
FROM
	`T_6b671b8818fe` `t1`
ORDER BY
	`t1`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TEMPORARY TABLE IF EXISTS `T_6b671b8818fe`

