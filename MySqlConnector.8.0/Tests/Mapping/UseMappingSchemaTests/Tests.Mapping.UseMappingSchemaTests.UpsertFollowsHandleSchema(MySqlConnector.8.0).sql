-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value Int32
SET     @Value = 6
DECLARE @Name VarChar(1) -- String
SET     @Name = 'b'

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
ON DUPLICATE KEY UPDATE
	`Value` = @Value,
	`Name` = @Name

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Value`,
	`t1`.`Name`
FROM
	`SourceSchemaRow` `t1`
ORDER BY
	`t1`.`Id`

