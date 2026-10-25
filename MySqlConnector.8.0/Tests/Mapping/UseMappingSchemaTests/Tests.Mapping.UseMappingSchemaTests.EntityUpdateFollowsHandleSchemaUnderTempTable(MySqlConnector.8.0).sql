-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
CREATE TABLE `SourceSchemaRowTemp`
(
	`Id`    INT           NOT NULL,
	`Value` INT           NOT NULL,
	`Name`  VARCHAR(4000)     NULL,

	CONSTRAINT `PK_SourceSchemaRowTemp` PRIMARY KEY CLUSTERED (`Id`, `Value`)
)

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
DROP TABLE IF EXISTS `SourceSchemaRowTemp`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Value`,
	`t1`.`Name`
FROM
	`SourceSchemaRow` `t1`
LIMIT 2

