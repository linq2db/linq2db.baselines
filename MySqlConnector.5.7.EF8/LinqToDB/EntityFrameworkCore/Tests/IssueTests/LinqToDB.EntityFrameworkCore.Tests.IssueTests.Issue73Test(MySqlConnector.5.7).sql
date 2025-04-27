SELECT CONCAT(CONCAT(COALESCE(`i0`.`Name`, ''), '>'), `i`.`Name`)
FROM `Issue73Entities` AS `i`
LEFT JOIN `Issue73Entities` AS `i0` ON `i`.`ParentId` = `i0`.`Id`
WHERE `i`.`Name` = 'Name1_3'


-- MySql.5.7.MySqlConnector MySql57

SELECT
	Concat(`a_Parent`.`Name`, '>', `x`.`Name`)
FROM
	`Issue73Entities` `x`
		LEFT JOIN `Issue73Entities` `a_Parent` ON `x`.`ParentId` = `a_Parent`.`Id`
WHERE
	`x`.`Name` = 'Name1_3'



