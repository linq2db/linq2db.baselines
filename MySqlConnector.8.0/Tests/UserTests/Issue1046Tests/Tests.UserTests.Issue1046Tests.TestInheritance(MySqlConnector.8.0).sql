-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @TargetName VarChar(12) -- String
SET     @TargetName = 'bda.Requests'
DECLARE @BdaValue VarChar(9) -- String
SET     @BdaValue = 'Bda value'

INSERT INTO `Task`
(
	`Id`,
	`TargetName`,
	`BdaValue`
)
VALUES
(
	@Id,
	@TargetName,
	@BdaValue
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`p`.`Id`,
	`p`.`TargetName`,
	`p`.`BdaValue`
FROM
	`Task` `p`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`p`.`BdaValue`
FROM
	`Task` `p`

