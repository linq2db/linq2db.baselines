SELECT `t`.`Id`
FROM `Projects` AS `p`
INNER JOIN (
    SELECT `m0`.`Id`, `m`.`OrgId`, `m`.`Code`
    FROM `MmProjectMember` AS `m`
    INNER JOIN `Members` AS `m0` ON `m`.`MemberId` = `m0`.`Id`
) AS `t` ON (`p`.`OrgId` = `t`.`OrgId`) AND (`p`.`Code` = `t`.`Code`)


-- MySql.5.7.MySqlConnector MySql57

SELECT
	`o`.`Id`
FROM
	`Projects` `m_1`
		INNER JOIN `MmProjectMember` `j` ON `m_1`.`OrgId` = `j`.`OrgId` AND `m_1`.`Code` = `j`.`Code`
		INNER JOIN `Members` `o` ON `o`.`Id` = `j`.`MemberId`



