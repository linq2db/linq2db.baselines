-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id Int32
SET     @id = 11

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`TestId`
FROM
	`Test3664` `m_1`
		INNER JOIN `Test3664Item` `d` ON `m_1`.`Id` = `d`.`TestId`
WHERE
	`d`.`Id` = @id

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`
FROM
	`Test3664` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id Int32
SET     @id = 12

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`TestId`
FROM
	`Test3664` `m_1`
		INNER JOIN `Test3664Item` `d` ON `m_1`.`Id` = `d`.`TestId`
WHERE
	`d`.`Id` = @id

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`
FROM
	`Test3664` `t1`

