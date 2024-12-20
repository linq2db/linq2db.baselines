BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Table1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Table1`
(
	`Field1` INT AUTO_INCREMENT NOT NULL,
	`Field2` INT                NOT NULL,

	CONSTRAINT `PK_Table1` PRIMARY KEY CLUSTERED (`Field1`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Table2`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Table2`
(
	`Field2` INT AUTO_INCREMENT NOT NULL,

	CONSTRAINT `PK_Table2` PRIMARY KEY CLUSTERED (`Field2`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Field2`
FROM
	`Table2` `t1`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Table1` `x`
		WHERE
			`t1`.`Field2` = `x`.`Field2` AND CAST(`x`.`Field1` AS SIGNED) IN (1, 2, 3)
	)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Table2`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Table1`

