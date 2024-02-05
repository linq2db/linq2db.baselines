BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3472TableDC`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue3472TableDC`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `Issue3472TableDC`
(
	`Id`
)
VALUES
(1)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	(
		SELECT
			Count(*)
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` = `t1`.`Id`
	)
FROM
	`Issue3472TableDC` `t1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3472TableDC`

