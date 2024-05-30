BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

CREATE TABLE IF NOT EXISTS `TempTable`
(
	`Name` VARCHAR(20) NOT NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

INSERT INTO `TempTable`
(
	`Name`
)
VALUES
('John')

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`t`.`Name`
FROM
	`Person` `p`
		INNER JOIN `TempTable` `t` ON `p`.`FirstName` = `t`.`Name`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

DROP TABLE IF EXISTS `TempTable`

