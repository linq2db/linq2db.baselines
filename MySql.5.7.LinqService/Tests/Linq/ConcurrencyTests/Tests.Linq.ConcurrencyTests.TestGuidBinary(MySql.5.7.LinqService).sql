BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `ConcurrencyGuidBinary`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `ConcurrencyGuidBinary`
(
	`Id`    INT           NOT NULL,
	`Stamp` BINARY(16)        NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_ConcurrencyGuidBinary` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Blob(16) -- Object
SET     @Stamp = 0x3D667BBCDE0F27438F925D8CC3A11D11
DECLARE @Value VarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO `ConcurrencyGuidBinary`
(
	`Id`,
	`Stamp`,
	`Value`
)
VALUES
(
	@Id,
	@Stamp,
	@Value
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyGuidBinary` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Stamp Blob(16) -- Object
SET     @Stamp = 0x6CAB0362EC63A7459CF29FF6057B6E44
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp_1 Blob(16) -- Object
SET     @Stamp_1 = 0x3D667BBCDE0F27438F925D8CC3A11D11

UPDATE
	`ConcurrencyGuidBinary` `obj`
SET
	`obj`.`Stamp` = @Stamp,
	`obj`.`Value` = @Value
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp_1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyGuidBinary` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Stamp Blob(16) -- Object
SET     @Stamp = 0x7DF18FCCE8432742B04C081F20FC5282
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp_1 Blob(16) -- Object
SET     @Stamp_1 = 0x6CAB0362EC63A7459CF29FF6057B6E44

UPDATE
	`ConcurrencyGuidBinary` `obj`
SET
	`obj`.`Stamp` = @Stamp,
	`obj`.`Value` = @Value
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp_1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyGuidBinary` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Stamp Blob(16) -- Object
SET     @Stamp = 0xD2454FFA68137D4385C6FF276953C53B
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 3'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp_1 Blob(16) -- Object
SET     @Stamp_1 = 0x0D6048A921DE744F8AC29516B287076E

UPDATE
	`ConcurrencyGuidBinary` `obj`
SET
	`obj`.`Stamp` = @Stamp,
	`obj`.`Value` = @Value
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp_1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyGuidBinary` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Blob(16) -- Object
SET     @Stamp = 0xA57339BD2343D84D9F4FDF9F93E2A627

DELETE  
FROM
	`ConcurrencyGuidBinary`
WHERE
	`ConcurrencyGuidBinary`.`Id` = @Id AND `ConcurrencyGuidBinary`.`Stamp` = @Stamp

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyGuidBinary` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Blob(16) -- Object
SET     @Stamp = 0x7DF18FCCE8432742B04C081F20FC5282

DELETE  
FROM
	`ConcurrencyGuidBinary`
WHERE
	`ConcurrencyGuidBinary`.`Id` = @Id AND `ConcurrencyGuidBinary`.`Stamp` = @Stamp

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyGuidBinary` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `ConcurrencyGuidBinary`

