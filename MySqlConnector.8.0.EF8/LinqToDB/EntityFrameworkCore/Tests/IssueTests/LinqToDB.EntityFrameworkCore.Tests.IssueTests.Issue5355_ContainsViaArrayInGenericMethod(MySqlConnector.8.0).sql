-- MySql.8.0.MySqlConnector MySql80

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



