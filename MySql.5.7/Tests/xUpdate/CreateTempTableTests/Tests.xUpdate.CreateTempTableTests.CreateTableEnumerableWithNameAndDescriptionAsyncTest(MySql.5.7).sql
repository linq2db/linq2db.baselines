-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TEMPORARY TABLE IF EXISTS `TempTable`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TEMPORARY TABLE IF NOT EXISTS `TempTable`
(
	`Name` VARCHAR(20) NOT NULL,

	CONSTRAINT `PK_TempTable` PRIMARY KEY CLUSTERED (`Name`)
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `TempTable`
(
	`Name`
)
VALUES
('John')

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`Name`
FROM
	`Person` `p`
		INNER JOIN `TempTable` `t` ON `p`.`FirstName` = `t`.`Name`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TEMPORARY TABLE IF EXISTS `TempTable`

