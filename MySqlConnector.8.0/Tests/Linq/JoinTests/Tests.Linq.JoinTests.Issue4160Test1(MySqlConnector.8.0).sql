BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4160Person`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue4160Person`
(
	`Code` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Issue4160Person`
(
	`Code`
)
VALUES
('SD'),
('SD'),
('SH')

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4160City`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue4160City`
(
	`Code` VARCHAR(4000)     NULL,
	`Name` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Issue4160City`
(
	`Code`,
	`Name`
)
VALUES
('SD','SYDNEY'),
('SD','SUNDAY'),
('SH','SYDHIP')

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT DISTINCT
	(
		SELECT
			`cc`.`Name`
		FROM
			`Issue4160City` `cc`
		WHERE
			`cc`.`Code` = `pe`.`Code` OR `cc`.`Code` IS NULL AND `pe`.`Code` IS NULL
		LIMIT 1
	)
FROM
	`Issue4160Person` `pe`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4160City`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4160Person`

