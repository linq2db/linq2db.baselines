BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue3360Table1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Guid Guid
SET     @Guid = '0b8afe27-481c-442e-b8cf-729ddfeece29'
DECLARE @GuidN Guid
SET     @GuidN = '0b8afe27-481c-442e-b8cf-729ddfeece30'

SELECT
	`t1`.`Id`,
	`t1`.`Byte`,
	`t1`.`Byte_1`,
	`t1`.`Guid`,
	`t1`.`GuidN`,
	`t1`.`Enum`,
	`t1`.`EnumN`,
	`t1`.`Bool`,
	`t1`.`BoolN`
FROM
	(
		SELECT
			`r`.`Id`,
			CAST(5 AS UNSIGNED) as `Byte`,
			CAST(5 AS UNSIGNED) as `Byte_1`,
			CAST(@Guid AS CHAR(36)) as `Guid`,
			CAST(@GuidN AS CHAR(36)) as `GuidN`,
			CAST('ENUM1_VALUE' AS CHAR(11)) as `Enum`,
			CAST('ENUM2_VALUE' AS CHAR(11)) as `EnumN`,
			CAST(1 AS SIGNED) as `Bool`,
			CAST(0 AS SIGNED) as `BoolN`
		FROM
			`Issue3360Table1` `r`
		WHERE
			`r`.`Id` = 2
		UNION ALL
		SELECT
			`r_1`.`Id`,
			`r_1`.`Byte`,
			`r_1`.`ByteN` as `Byte_1`,
			`r_1`.`Guid`,
			`r_1`.`GuidN`,
			`r_1`.`Enum`,
			`r_1`.`EnumN`,
			`r_1`.`Bool`,
			`r_1`.`BoolN`
		FROM
			`Issue3360Table1` `r_1`
		WHERE
			`r_1`.`Id` = 4
	) `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue3360Table1`

