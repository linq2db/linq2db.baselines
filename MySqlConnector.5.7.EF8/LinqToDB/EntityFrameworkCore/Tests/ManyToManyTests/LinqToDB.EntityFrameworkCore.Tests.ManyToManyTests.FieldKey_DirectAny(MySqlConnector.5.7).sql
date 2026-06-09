SELECT `a`.`Name`
FROM `Accounts` AS `a`
WHERE EXISTS (
    SELECT 1
    FROM `MmAccountMmRole` AS `m`
    INNER JOIN `Roles` AS `r` ON `m`.`RolesId` = `r`.`Id`
    WHERE (`a`.`account_id_col` = `m`.`AccountsAccountId`) AND (`r`.`Name` = 'Admin'))
ORDER BY `a`.`Name`


-- MySql.5.7.MySqlConnector MySql57

SELECT
	`a`.`Name`
FROM
	`Accounts` `a`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`MmAccountMmRole` `r`
				INNER JOIN `Roles` `o` ON `o`.`Id` = `r`.`RolesId`
		WHERE
			`a`.`account_id_col` = `r`.`AccountsAccountId` AND
			`o`.`Name` = 'Admin'
	)
ORDER BY
	`a`.`Name`



