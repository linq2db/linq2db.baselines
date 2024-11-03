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
(1,0,NULL,'00000000-0000-0000-0000-000000000000',NULL,'ENUM1_VALUE',NULL,0,NULL),
(2,1,2,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11','a948600d-de21-4f74-8ac2-9516b287076e','ENUM1_VALUE','ENUM2_VALUE',1,0),
(4,3,4,'bd3973a5-4323-4dd8-9f4f-df9f93e2a627','bc7b663d-0fde-4327-8f92-5d8cc3a11d11','ENUM1_VALUE','ENUM2_VALUE',0,1)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p Guid
SET     @p = '0b8afe27-481c-442e-b8cf-729ddfeece29'
DECLARE @p_1 Guid
SET     @p_1 = '0b8afe27-481c-442e-b8cf-729ddfeece30'

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
			CAST(@p AS CHAR(36)) as `Guid`,
			CAST(@p_1 AS CHAR(36)) as `GuidN`,
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue3360Table1`

