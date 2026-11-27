-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `LoadWithFilterRecord`
(
	`Id`
)
VALUES
(
	@Id
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
-- Command 1
DECLARE @id Int32
SET     @id = 11

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`TestId`
FROM
	`LoadWithFilterRecord` `m_1`
		INNER JOIN `LoadWithFilterRecordItem` `d` ON `m_1`.`Id` = `d`.`TestId`
WHERE
	`d`.`Id` = @id

-- Command 2
SELECT
	`t1`.`Id`
FROM
	`LoadWithFilterRecord` `t1`
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
-- Command 1
DECLARE @id Int32
SET     @id = 12

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`TestId`
FROM
	`LoadWithFilterRecord` `m_1`
		INNER JOIN `LoadWithFilterRecordItem` `d` ON `m_1`.`Id` = `d`.`TestId`
WHERE
	`d`.`Id` = @id

-- Command 2
SELECT
	`t1`.`Id`
FROM
	`LoadWithFilterRecord` `t1`
