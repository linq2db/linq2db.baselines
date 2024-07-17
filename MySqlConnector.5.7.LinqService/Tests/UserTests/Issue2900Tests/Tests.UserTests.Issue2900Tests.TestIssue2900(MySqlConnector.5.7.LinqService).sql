BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Request`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Request`
(
	`Id` INT AUTO_INCREMENT NOT NULL,

	CONSTRAINT `PK_Request` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Metric`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Metric`
(
	`Id`        INT    AUTO_INCREMENT NOT NULL,
	`RequestId` INT                   NOT NULL,
	`Value`     DOUBLE                    NULL,

	CONSTRAINT `PK_Metric` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			1
		FROM
			`Metric` `a_Metrics`
		WHERE
			`a`.`Id` = `a_Metrics`.`RequestId`
		LIMIT 1
	),
	(
		SELECT
			`a_Metrics_1`.`Value`
		FROM
			`Metric` `a_Metrics_1`
		WHERE
			`a`.`Id` = `a_Metrics_1`.`RequestId`
		LIMIT 1
	)
FROM
	`Request` `a`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Metric`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Request`

