-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Key Int32
SET     @Key = 10

INSERT INTO `StructDuRow`
(
	`Id`,
	`Key`
)
VALUES
(
	@Id,
	@Key
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Oid Int32
SET     @Oid = 1
DECLARE @RefId Int32
SET     @RefId = 1

INSERT INTO `DuOuter`
(
	`Oid`,
	`RefId`
)
VALUES
(
	@Oid,
	@RefId
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Oid Int32
SET     @Oid = 2
DECLARE @RefId Int32
SET     @RefId = 99

INSERT INTO `DuOuter`
(
	`Oid`,
	`RefId`
)
VALUES
(
	@Oid,
	@RefId
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`arg2`.`Key`
FROM
	`DuOuter` `tupledArg`
		LEFT JOIN `StructDuRow` `arg2` ON `tupledArg`.`RefId` = `arg2`.`Id`
ORDER BY
	`tupledArg`.`Oid`

