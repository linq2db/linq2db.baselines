-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`p`.`Id`,
	`p`.`TargetName`,
	`p`.`BdaValue`
FROM
	`Task` `p`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`p`.`BdaValue`
FROM
	`Task` `p`

