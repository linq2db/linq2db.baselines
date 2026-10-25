-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
CREATE TEMPORARY TABLE `SourceSchemaRowTemp`
(
	`Id`    INT           NOT NULL,
	`Value` INT           NOT NULL,
	`Name`  VARCHAR(4000)     NULL,

	CONSTRAINT `PK_SourceSchemaRowTemp` PRIMARY KEY CLUSTERED (`Id`, `Value`)
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DROP TEMPORARY TABLE IF EXISTS `SourceSchemaRowTemp`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Value`,
	`t1`.`Name`
FROM
	`SourceSchemaRow` `t1`
LIMIT 2

