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
	`t1`.`c1`,
	`t1`.`c2`,
	`t1`.`c3`,
	`t1`.`c4`,
	`t1`.`c5`,
	`t1`.`c6`,
	`t1`.`c7`,
	`t1`.`c8`
FROM
	(
		SELECT
			`r`.`Id`,
			CAST(5 AS UNSIGNED) as `c1`,
			CAST(5 AS UNSIGNED) as `c2`,
			CAST(@Guid AS CHAR(36)) as `c3`,
			CAST(@GuidN AS CHAR(36)) as `c4`,
			CAST('ENUM1_VALUE' AS CHAR(11)) as `c5`,
			CAST('ENUM2_VALUE' AS CHAR(11)) as `c6`,
			CAST(1 AS SIGNED) as `c7`,
			CAST(0 AS SIGNED) as `c8`
		FROM
			`Issue3360Table1` `r`
		WHERE
			`r`.`Id` = 2
		UNION ALL
		SELECT
			`r_1`.`Id`,
			`r_1`.`Byte` as `c1`,
			`r_1`.`ByteN` as `c2`,
			`r_1`.`Guid` as `c3`,
			`r_1`.`GuidN` as `c4`,
			`r_1`.`Enum` as `c5`,
			`r_1`.`EnumN` as `c6`,
			`r_1`.`Bool` as `c7`,
			`r_1`.`BoolN` as `c8`
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

