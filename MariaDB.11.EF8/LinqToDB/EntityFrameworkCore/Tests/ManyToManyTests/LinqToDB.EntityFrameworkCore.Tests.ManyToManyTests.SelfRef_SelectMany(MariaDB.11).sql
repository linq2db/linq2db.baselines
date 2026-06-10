SELECT `t`.`Id`
FROM `People` AS `p`
INNER JOIN (
    SELECT `p0`.`Id`, `m`.`PersonId`
    FROM `MmFriendship` AS `m`
    INNER JOIN `People` AS `p0` ON `m`.`FriendId` = `p0`.`Id`
) AS `t` ON `p`.`Id` = `t`.`PersonId`


-- MariaDB.10.MySqlConnector MariaDB

SELECT
	`o`.`Id`
FROM
	`People` `f`
		INNER JOIN `MmFriendship` `j` ON `f`.`Id` = `j`.`PersonId`
		INNER JOIN `People` `o` ON `o`.`Id` = `j`.`FriendId`



