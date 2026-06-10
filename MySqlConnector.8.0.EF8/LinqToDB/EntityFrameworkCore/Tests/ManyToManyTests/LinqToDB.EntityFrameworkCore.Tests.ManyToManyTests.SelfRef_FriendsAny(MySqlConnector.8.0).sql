SELECT `p`.`Id`
FROM `People` AS `p`
WHERE EXISTS (
    SELECT 1
    FROM `MmFriendship` AS `m`
    INNER JOIN `People` AS `p0` ON `m`.`FriendId` = `p0`.`Id`
    WHERE (`p`.`Id` = `m`.`PersonId`) AND (`p0`.`Name` = 'Carol'))
ORDER BY `p`.`Id`


-- MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`Id`
FROM
	`People` `p`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`MmFriendship` `f`
				INNER JOIN `People` `o` ON `o`.`Id` = `f`.`FriendId`
		WHERE
			`p`.`Id` = `f`.`PersonId` AND `o`.`Name` = 'Carol'
	)
ORDER BY
	`p`.`Id`



