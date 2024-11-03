BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue3360Table1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue3360Table1`
(
	`Id`    INT              NOT NULL,
	`Byte`  TINYINT UNSIGNED NOT NULL,
	`ByteN` TINYINT UNSIGNED     NULL,
	`Guid`  CHAR(36)         NOT NULL,
	`GuidN` CHAR(36)             NULL,
	`Enum`  CHAR(11)         NOT NULL,
	`EnumN` CHAR(11)             NULL,
	`Bool`  BOOLEAN          NOT NULL,
	`BoolN` BOOLEAN              NULL,

	CONSTRAINT `PK_Issue3360Table1` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Byte UByte -- Byte
SET     @Byte = 0
DECLARE @ByteN UByte -- Byte
SET     @ByteN = NULL
DECLARE @Guid Guid
SET     @Guid = '00000000-0000-0000-0000-000000000000'
DECLARE @GuidN Guid
SET     @GuidN = NULL
DECLARE @Enum String(11) -- StringFixedLength
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN String -- StringFixedLength
SET     @EnumN = NULL
DECLARE @Bool UByte -- Boolean
SET     @Bool = 0
DECLARE @BoolN UByte -- Boolean
SET     @BoolN = NULL

INSERT INTO `Issue3360Table1`
(
	`Id`,
	`Byte`,
	`ByteN`,
	`Guid`,
	`GuidN`,
	`Enum`,
	`EnumN`,
	`Bool`,
	`BoolN`
)
VALUES
(
	@Id,
	@Byte,
	@ByteN,
	@Guid,
	@GuidN,
	@Enum,
	@EnumN,
	@Bool,
	@BoolN
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Byte UByte -- Byte
SET     @Byte = 1
DECLARE @ByteN UByte -- Byte
SET     @ByteN = 2
DECLARE @Guid Guid
SET     @Guid = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @GuidN Guid
SET     @GuidN = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @Enum String(11) -- StringFixedLength
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN String(11) -- StringFixedLength
SET     @EnumN = 'ENUM2_VALUE'
DECLARE @Bool UByte -- Boolean
SET     @Bool = 1
DECLARE @BoolN UByte -- Boolean
SET     @BoolN = 0

INSERT INTO `Issue3360Table1`
(
	`Id`,
	`Byte`,
	`ByteN`,
	`Guid`,
	`GuidN`,
	`Enum`,
	`EnumN`,
	`Bool`,
	`BoolN`
)
VALUES
(
	@Id,
	@Byte,
	@ByteN,
	@Guid,
	@GuidN,
	@Enum,
	@EnumN,
	@Bool,
	@BoolN
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Byte UByte -- Byte
SET     @Byte = 3
DECLARE @ByteN UByte -- Byte
SET     @ByteN = 4
DECLARE @Guid Guid
SET     @Guid = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'
DECLARE @GuidN Guid
SET     @GuidN = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @Enum String(11) -- StringFixedLength
SET     @Enum = 'ENUM1_VALUE'
DECLARE @EnumN String(11) -- StringFixedLength
SET     @EnumN = 'ENUM2_VALUE'
DECLARE @Bool UByte -- Boolean
SET     @Bool = 0
DECLARE @BoolN UByte -- Boolean
SET     @BoolN = 1

INSERT INTO `Issue3360Table1`
(
	`Id`,
	`Byte`,
	`ByteN`,
	`Guid`,
	`GuidN`,
	`Enum`,
	`EnumN`,
	`Bool`,
	`BoolN`
)
VALUES
(
	@Id,
	@Byte,
	@ByteN,
	@Guid,
	@GuidN,
	@Enum,
	@EnumN,
	@Bool,
	@BoolN
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Byte`,
	`t1`.`Byte_1`,
	`t1`.`Guid`,
	`t1`.`Guid_1`,
	`t1`.`c1`,
	`t1`.`c2`,
	`t1`.`Bool`,
	`t1`.`Bool_1`
FROM
	(
		SELECT
			`r`.`Id`,
			NULL as `Byte`,
			NULL as `Byte_1`,
			NULL as `Guid`,
			NULL as `Guid_1`,
			NULL as `c1`,
			NULL as `c2`,
			NULL as `Bool`,
			NULL as `Bool_1`
		FROM
			`Issue3360Table1` `r`
		WHERE
			`r`.`Id` = 1
		UNION ALL
		SELECT
			`r_1`.`Id`,
			`r_1`.`Byte`,
			`r_1`.`ByteN` as `Byte_1`,
			`r_1`.`Guid`,
			`r_1`.`GuidN` as `Guid_1`,
			`r_1`.`Enum` as `c1`,
			`r_1`.`EnumN` as `c2`,
			`r_1`.`Bool`,
			`r_1`.`BoolN` as `Bool_1`
		FROM
			`Issue3360Table1` `r_1`
		WHERE
			`r_1`.`Id` = 2
	) `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue3360Table1`

