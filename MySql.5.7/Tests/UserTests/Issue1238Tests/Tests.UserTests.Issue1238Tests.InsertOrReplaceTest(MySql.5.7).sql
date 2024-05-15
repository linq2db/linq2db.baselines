BeforeExecute
BeginTransaction
BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`InheritanceParent`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`InheritanceParent` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`InheritanceParent` `t1`

BeforeExecute
DisposeTransaction
