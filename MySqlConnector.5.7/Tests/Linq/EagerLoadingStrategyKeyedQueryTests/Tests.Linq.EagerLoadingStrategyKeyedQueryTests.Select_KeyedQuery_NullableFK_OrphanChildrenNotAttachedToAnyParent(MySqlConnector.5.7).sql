-- MySqlConnector.5.7 MySql.5.7.MySqlConnector
-- Batch 1
SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`ParentId`,
	`d`.`Name`
FROM
	`NullableParent` `m_1`
		INNER JOIN `NullableChild` `d` ON `d`.`ParentId` = `m_1`.`Id`
ORDER BY
	`d`.`Id`,
	`m_1`.`Id`

-- Batch 2
SELECT
	`p`.`Id`,
	`p`.`Name`
FROM
	`NullableParent` `p`
ORDER BY
	`p`.`Id`
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector
-- Batch 1
SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`ParentId`,
	`d`.`Name`
FROM
	`NullableParent` `m_1`
		INNER JOIN `NullableChild` `d` ON `d`.`ParentId` = `m_1`.`Id`
ORDER BY
	`d`.`Id`,
	`m_1`.`Id`

-- Batch 2
SELECT
	`p`.`Id`,
	`p`.`Name`
FROM
	`NullableParent` `p`
ORDER BY
	`p`.`Id`
