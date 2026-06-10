SELECT `r`.`Id`, `r`.`Name`, `s`.`AccountsAccountId`, `s`.`RolesId`, `s`.`account_id_col`, `s`.`Name`
FROM `Roles` AS `r`
LEFT JOIN (
    SELECT `m`.`AccountsAccountId`, `m`.`RolesId`, `a`.`account_id_col`, `a`.`Name`
    FROM `MmAccountMmRole` AS `m`
    INNER JOIN `Accounts` AS `a` ON `m`.`AccountsAccountId` = `a`.`account_id_col`
) AS `s` ON `r`.`Id` = `s`.`RolesId`
ORDER BY `r`.`Id`, `s`.`AccountsAccountId`, `s`.`RolesId`




-- MySql.8.0.MySqlConnector MySql80

SELECT
	`m_1`.`Id`,
	`o`.`Name`
FROM
	`Roles` `m_1`
		INNER JOIN `MmAccountMmRole` `d` ON `m_1`.`Id` = `d`.`RolesId`
		INNER JOIN `Accounts` `o` ON `o`.`account_id_col` = `d`.`AccountsAccountId`
ORDER BY
	`m_1`.`Id`





-- MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Roles` `t1`
ORDER BY
	`t1`.`Id`



