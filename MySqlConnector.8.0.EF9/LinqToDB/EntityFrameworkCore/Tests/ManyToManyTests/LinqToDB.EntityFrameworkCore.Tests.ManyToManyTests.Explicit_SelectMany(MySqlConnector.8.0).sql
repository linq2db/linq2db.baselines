SELECT `s`.`Id`
FROM `Orders` AS `o`
INNER JOIN (
    SELECT `p`.`Id`, `m`.`OrderId`
    FROM `MmOrderProduct` AS `m`
    INNER JOIN `Products` AS `p` ON `m`.`ProductId` = `p`.`Id`
) AS `s` ON `o`.`Id` = `s`.`OrderId`


-- MySql.8.0.MySqlConnector MySql80

SELECT
	`o`.`Id`
FROM
	`Orders` `p`
		INNER JOIN `MmOrderProduct` `j` ON `p`.`Id` = `j`.`OrderId`
		INNER JOIN `Products` `o` ON `o`.`Id` = `j`.`ProductId`



