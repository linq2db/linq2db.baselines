-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Type Int32
SET     @Type = 1
DECLARE @Stored VarChar(4) -- String
SET     @Stored = 'John'

INSERT INTO `CalcSubtypeDual`
(
	`Id`,
	`Type`,
	`Stored`
)
VALUES
(
	@Id,
	@Type,
	@Stored
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Type`,
	`t1`.`Id`,
	`t1`.`Stored`,
	CONCAT(Coalesce(`t1`.`Stored`, ''), '!')
FROM
	`CalcSubtypeDual` `t1`
LIMIT 2

