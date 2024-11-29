BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4620Table`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue4620Table`
(
	`Id`         INT             NOT NULL,
	`IdContract` INT                 NULL,
	`IdClient`   INT                 NULL,
	`Sum`        DECIMAL(29, 10) NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Issue4620Table`
(
	`Id`,
	`IdContract`,
	`IdClient`,
	`Sum`
)
VALUES
(1,NULL,1,0),
(2,2,NULL,0),
(3,NULL,NULL,0),
(4,2,1,0)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4620Client`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue4620Client`
(
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Issue4620Client`
(
	`Id`,
	`Name`
)
VALUES
(1,'Client 1'),
(2,'Client 2')

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4620Contract`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue4620Contract`
(
	`Id`       INT NOT NULL,
	`IdClient` INT NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Issue4620Contract`
(
	`Id`,
	`IdClient`
)
VALUES
(1,1),
(2,2)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	(
		SELECT
			`b`.`Id`,
			`a_Client`.`Name`
		FROM
			`Issue4620Table` `b`
				INNER JOIN `Issue4620Client` `a_Client` ON `b`.`IdClient` = `a_Client`.`Id`
		WHERE
			`b`.`IdClient` IS NOT NULL
		UNION ALL
		SELECT
			`b_1`.`Id`,
			`a_Client_1`.`Name`
		FROM
			`Issue4620Table` `b_1`
				INNER JOIN `Issue4620Contract` `a_Contract` ON `b_1`.`IdContract` = `a_Contract`.`Id`
				INNER JOIN `Issue4620Client` `a_Client_1` ON `a_Contract`.`IdClient` = `a_Client_1`.`Id`
		WHERE
			`b_1`.`IdContract` IS NOT NULL
	) `t1`
ORDER BY
	`t1`.`Id`,
	`t1`.`Name`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4620Contract`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4620Client`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4620Table`

