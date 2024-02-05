BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue3472TableDCTX`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue3472TableDCTX`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
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
	`Issue3472TableDCTX` `t1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue3472TableDCTX`

