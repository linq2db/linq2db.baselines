BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue3472TableDCTX`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue3472TableDCTX`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	(
		SELECT
			COUNT(*)
		FROM
			`Person` `p`
		WHERE
			`p`.`PersonID` = `t1`.`Id`
	)
FROM
	`Issue3472TableDCTX` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue3472TableDCTX`

