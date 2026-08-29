-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`after_1`.`Id`,
	`arg3`.`Id`,
	`arg3`.`Text`
FROM
	`Names` `after_1`
		LEFT JOIN `Addresses` `arg3` ON `arg3`.`Id` = `after_1`.`Id`

