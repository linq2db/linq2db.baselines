-- MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`Id`,
	`x`.`ProfileId`,
	`x`.`Name`
FROM
	`Issue5355Customers` `x`
		INNER JOIN `Issue5355LicenseProfiles` `a_Profile` ON `x`.`ProfileId` = `a_Profile`.`Id`
WHERE
	`a_Profile`.`License` IN ('12345')
ORDER BY
	`x`.`Id`



