-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'name1'

INSERT INTO `Names`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name VarChar(5) -- String
SET     @Name = 'name2'

INSERT INTO `Names`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Text VarChar(7) -- String
SET     @Text = 'address'

INSERT INTO `Addresses`
(
	`Id`,
	`Text`
)
VALUES
(
	@Id,
	@Text
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Text`
FROM
	`Names` `m_1`
		INNER JOIN `Addresses` `d` ON `m_1`.`Id` = `d`.`Id`
ORDER BY
	`m_1`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`tupledArg`.`Id`,
	`tupledArg`.`Name`
FROM
	`Names` `tupledArg`
ORDER BY
	`tupledArg`.`Id`

