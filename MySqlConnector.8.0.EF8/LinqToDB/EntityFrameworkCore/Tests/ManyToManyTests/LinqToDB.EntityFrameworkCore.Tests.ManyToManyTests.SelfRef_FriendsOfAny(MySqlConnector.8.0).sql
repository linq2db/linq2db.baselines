SELECT `p`.`Id`
FROM `People` AS `p`
WHERE EXISTS (
    SELECT 1
    FROM `MmFriendship` AS `m`
    INNER JOIN `People` AS `p0` ON `m`.`PersonId` = `p0`.`Id`
    WHERE (`p`.`Id` = `m`.`FriendId`) AND (`p0`.`Name` = 'Alice'))
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
				INNER JOIN `People` `o` ON `o`.`Id` = `f`.`PersonId`
		WHERE
			`p`.`Id` = `f`.`FriendId` AND `o`.`Name` = 'Alice'
	)
ORDER BY
	`p`.`Id`



