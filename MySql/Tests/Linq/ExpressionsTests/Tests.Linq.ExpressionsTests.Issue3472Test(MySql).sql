BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue3472TableDC`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue3472TableDC`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Issue3472TableDC`
(
	`Id`
)
VALUES
(1)

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue3472TableDC`

