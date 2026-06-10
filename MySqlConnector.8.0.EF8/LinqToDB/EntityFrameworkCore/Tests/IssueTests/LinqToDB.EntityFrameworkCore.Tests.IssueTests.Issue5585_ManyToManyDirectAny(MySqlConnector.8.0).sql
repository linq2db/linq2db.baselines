SELECT `i`.`Id`
FROM `Issue5585CustomerShares` AS `i`
WHERE EXISTS (
    SELECT 1
    FROM `Issue5585CustomerShareIssue5585User` AS `i0`
    INNER JOIN `Issue5585Users` AS `i1` ON `i0`.`UsersId` = `i1`.`Id`
    WHERE (`i`.`Id` = `i0`.`CustomerSharesId`) AND (`i1`.`Email` = 'user@mail.com'))
ORDER BY `i`.`Id`


-- MySql.8.0.MySqlConnector MySql80

SELECT
	`s`.`Id`
FROM
	`Issue5585CustomerShares` `s`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Issue5585CustomerShareIssue5585User` `u`
				INNER JOIN `Issue5585Users` `o` ON `o`.`Id` = `u`.`UsersId`
		WHERE
			`s`.`Id` = `u`.`CustomerSharesId` AND `o`.`Email` = 'user@mail.com'
	)
ORDER BY
	`s`.`Id`



