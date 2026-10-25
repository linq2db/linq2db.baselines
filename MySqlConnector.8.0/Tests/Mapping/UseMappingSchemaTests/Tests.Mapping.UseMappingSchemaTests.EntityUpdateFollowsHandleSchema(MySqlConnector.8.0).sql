-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Value Int32
SET     @Value = 6
DECLARE @Name VarChar(1) -- String
SET     @Name = 'b'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`SourceSchemaRow` `t`
SET
	`t`.`Value` = @Value,
	`t`.`Name` = @Name
WHERE
	`t`.`Id` = @Id

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Value`,
	`t1`.`Name`
FROM
	`SourceSchemaRow` `t1`
LIMIT 2

