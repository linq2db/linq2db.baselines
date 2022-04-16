BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3472TableDCTX`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue3472TableDCTX`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `Issue3472TableDCTX`
(
	`Id`
)
VALUES
(
	@Id
)

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
	`Issue3472TableDCTX` `t1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3472TableDCTX`

