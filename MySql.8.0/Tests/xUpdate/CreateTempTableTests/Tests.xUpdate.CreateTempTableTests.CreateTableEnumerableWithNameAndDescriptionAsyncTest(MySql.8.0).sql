-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TEMPORARY TABLE IF EXISTS `TempTable`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TEMPORARY TABLE IF NOT EXISTS `TempTable`
(
	`Name` VARCHAR(20) NOT NULL
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `TempTable`
(
	`Name`
)
VALUES
('John')

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Name`
FROM
	`Person` `p`
		INNER JOIN `TempTable` `t` ON `p`.`FirstName` = `t`.`Name`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TEMPORARY TABLE IF EXISTS `TempTable`

