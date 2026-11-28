-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value Int32
SET     @Value = 5
DECLARE @Name VarChar(1) -- String
SET     @Name = 'a'

INSERT INTO `SourceSchemaRow`
(
	`Id`,
	`Value`,
	`Name`
)
VALUES
(
	@Id,
	@Value,
	@Name
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value`,
	`t1`.`Name`
FROM
	`SourceSchemaRow` `t1`
LIMIT 2

