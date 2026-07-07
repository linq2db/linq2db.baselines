-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `Test3664`
(
	`Id`
)
VALUES
(
	@Id
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector
-- Batch 1
-- id = 11
SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`TestId`
FROM
	`Test3664` `m_1`
		INNER JOIN `Test3664Item` `d` ON `m_1`.`Id` = `d`.`TestId`
WHERE
	`d`.`Id` = @id

-- Batch 2
SELECT
	`t1`.`Id`
FROM
	`Test3664` `t1`
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector
-- Batch 1
-- id = 12
SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`TestId`
FROM
	`Test3664` `m_1`
		INNER JOIN `Test3664Item` `d` ON `m_1`.`Id` = `d`.`TestId`
WHERE
	`d`.`Id` = @id

-- Batch 2
SELECT
	`t1`.`Id`
FROM
	`Test3664` `t1`
