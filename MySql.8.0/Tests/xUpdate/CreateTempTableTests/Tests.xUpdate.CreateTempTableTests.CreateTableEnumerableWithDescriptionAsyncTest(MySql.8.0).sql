BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

CREATE TABLE IF NOT EXISTS `TempTable`
(
	`Name` VARCHAR(20) NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

INSERT INTO `TempTable`
(
	`Name`
)
VALUES
('John')

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	`t`.`Name`
FROM
	`Person` `p`
		INNER JOIN `TempTable` `t` ON `p`.`FirstName` = `t`.`Name`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

DROP TABLE IF EXISTS `TempTable`

