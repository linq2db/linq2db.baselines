BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `ConcurrencyGuidBinary`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `ConcurrencyGuidBinary`
(
	`Id`    INT           NOT NULL,
	`Stamp` BINARY(16)        NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_ConcurrencyGuidBinary` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Blob(16) -- Binary
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyGuidBinary` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Stamp Blob(16) -- Binary
SET     @Stamp = 0x5CC39E5FFB968E41BE734180897B8193
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp_1 Blob(16) -- Binary
SET     @Stamp_1 = 0x3D667BBCDE0F27438F925D8CC3A11D11

UPDATE
	`ConcurrencyGuidBinary` `obj`
SET
	`obj`.`Stamp` = @Stamp,
	`obj`.`Value` = @Value
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp_1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyGuidBinary` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Stamp Blob(16) -- Binary
SET     @Stamp = 0x3EEBD66C6DCA39469A174A11DD28B7FF
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp_1 Blob(16) -- Binary
SET     @Stamp_1 = 0x5CC39E5FFB968E41BE734180897B8193

UPDATE
	`ConcurrencyGuidBinary` `obj`
SET
	`obj`.`Stamp` = @Stamp,
	`obj`.`Value` = @Value
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp_1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyGuidBinary` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Stamp Blob(16) -- Binary
SET     @Stamp = 0xEBA8B0FE4C728943B6BAF7A64D26AAAE
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 3'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp_1 Blob(16) -- Binary
SET     @Stamp_1 = 0x0D6048A921DE744F8AC29516B287076E

UPDATE
	`ConcurrencyGuidBinary` `obj`
SET
	`obj`.`Stamp` = @Stamp,
	`obj`.`Value` = @Value
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp_1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyGuidBinary` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Blob(16) -- Binary
SET     @Stamp = 0xA57339BD2343D84D9F4FDF9F93E2A627

DELETE  
FROM
	`ConcurrencyGuidBinary`
WHERE
	`ConcurrencyGuidBinary`.`Id` = @Id AND `ConcurrencyGuidBinary`.`Stamp` = @Stamp

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyGuidBinary` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Blob(16) -- Binary
SET     @Stamp = 0x3EEBD66C6DCA39469A174A11DD28B7FF

DELETE  
FROM
	`ConcurrencyGuidBinary`
WHERE
	`ConcurrencyGuidBinary`.`Id` = @Id AND `ConcurrencyGuidBinary`.`Stamp` = @Stamp

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyGuidBinary` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `ConcurrencyGuidBinary`

