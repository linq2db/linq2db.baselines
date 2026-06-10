SELECT `r`.`Id`
FROM `Roles` AS `r`
WHERE EXISTS (
    SELECT 1
    FROM `MmAccountMmRole` AS `m`
    INNER JOIN `Accounts` AS `a` ON `m`.`AccountsAccountId` = `a`.`account_id_col`
    WHERE (`r`.`Id` = `m`.`RolesId`) AND (`a`.`Name` = 'Acc1'))
ORDER BY `r`.`Id`


-- MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`
FROM
	`Roles` `r`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`MmAccountMmRole` `a`
				INNER JOIN `Accounts` `o` ON `o`.`account_id_col` = `a`.`AccountsAccountId`
		WHERE
			`r`.`Id` = `a`.`RolesId` AND `o`.`Name` = 'Acc1'
	)
ORDER BY
	`r`.`Id`



