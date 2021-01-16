BeforeExecute
-- MySql55 MySql.Official MySql

DELETE `t1`
FROM
	`InheritanceParent` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Key1 Int32
SET     @Key1 = 143
DECLARE @Key2 VarChar -- String
SET     @Key2 = NULL
DECLARE @Data_1 Int32
SET     @Data_1 = 1

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
	@Data_1
)
ON DUPLICATE KEY UPDATE
	`TypeDiscriminator` = @Data_1

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`InheritanceParent` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Key1 Int32
SET     @Key1 = 143
DECLARE @Key2 VarChar -- String
SET     @Key2 = NULL
DECLARE @Data_1 Int32
SET     @Data_1 = 1

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
	@Data_1
)
ON DUPLICATE KEY UPDATE
	`TypeDiscriminator` = @Data_1

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`InheritanceParent` `t1`

