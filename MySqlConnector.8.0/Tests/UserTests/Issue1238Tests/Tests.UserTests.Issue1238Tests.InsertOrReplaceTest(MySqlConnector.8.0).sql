BeforeExecute
BeginTransaction
BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`InheritanceParent`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Key1 Int32
SET     @Key1 = 143
DECLARE @Key2 VarChar -- String
SET     @Key2 = NULL
DECLARE @Data Int32
SET     @Data = 1

INSERT INTO `InheritanceParent`
(
	`InheritanceParentId`,
	`Name`,
	`TypeDiscriminator`
)
VALUES
(
	@Key1,
	@Key2,
	@Data
)
ON DUPLICATE KEY UPDATE
	`TypeDiscriminator` = @Data

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`InheritanceParent` `t1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Key1 Int32
SET     @Key1 = 143
DECLARE @Key2 VarChar -- String
SET     @Key2 = NULL
DECLARE @Data Int32
SET     @Data = 1

INSERT INTO `InheritanceParent`
(
	`InheritanceParentId`,
	`Name`,
	`TypeDiscriminator`
)
VALUES
(
	@Key1,
	@Key2,
	@Data
)
ON DUPLICATE KEY UPDATE
	`TypeDiscriminator` = @Data

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`InheritanceParent` `t1`

BeforeExecute
DisposeTransaction
