BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `ValueConversion`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `ValueConversion`
(
	`Id`                      INT          NOT NULL,
	`Value1`                  VARCHAR(200)     NULL,
	`Value2`                  VARCHAR(200)     NULL,
	`Enum`                    VARCHAR(50)  NOT NULL,
	`EnumNullable`            VARCHAR(50)      NULL,
	`EnumWithNull`            VARCHAR(50)      NULL,
	`EnumWithNullDeclarative` VARCHAR(50)      NULL,
	`BoolValue`               VARCHAR(1)   NOT NULL,
	`AnotherBoolValue`        VARCHAR(1)   NOT NULL,
	`DateTimeNullable`        DATETIME         NULL,

	CONSTRAINT `PK_ValueConversion` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `ValueConversion`
(
	`Id`,
	`Value1`,
	`Value2`,
	`Enum`,
	`EnumNullable`,
	`EnumWithNull`,
	`EnumWithNullDeclarative`,
	`BoolValue`,
	`AnotherBoolValue`,
	`DateTimeNullable`
)
VALUES
(1,'{"some":"str1"}','[{"Value":"Value1"}]','Value1','Value1','Value1','Value1','Y','F',NULL),
(2,'{"some":"str2"}','[{"Value":"Value2"}]','Value2','Value2','Value2','Value2','N','F','2020-02-29'),
(3,'{"some":"str3"}','[{"Value":"Value3"}]','Value3','Value3','Value3','Value3','N','F','2020-02-29'),
(4,'{"some":"str4"}','[{"Value":"Value4"}]','Value1',NULL,NULL,NULL,'N','F',NULL),
(5,'{"some":"str5"}','[{"Value":"Value5"}]','Value2','Value1','Value1','Value1','Y','F','2020-02-29'),
(6,'{"some":"str6"}','[{"Value":"Value6"}]','Value3','Value2','Value2','Value2','N','F','2020-02-29'),
(7,'{"some":"str7"}','[{"Value":"Value7"}]','Value1','Value3','Value3','Value3','N','F',NULL),
(8,'{"some":"str8"}','[{"Value":"Value8"}]','Value2',NULL,NULL,NULL,'N','F','2020-02-29'),
(9,'{"some":"str9"}','[{"Value":"Value9"}]','Value3','Value1','Value1','Value1','Y','F','2020-02-29'),
(10,NULL,NULL,'Value1','Value2','Value2','Value2','N','F',NULL)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value2 VarChar(21) -- String
SET     @Value2 = '[{"Value":"updated"}]'
DECLARE @EnumWithNull VarChar -- AnsiString
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative VarChar -- AnsiString
SET     @EnumWithNullDeclarative = NULL

UPDATE
	`ValueConversion` `e`
SET
	`e`.`Value1` = `e`.`Value1`,
	`e`.`Value2` = @Value2,
	`e`.`EnumWithNull` = @EnumWithNull,
	`e`.`EnumWithNullDeclarative` = @EnumWithNullDeclarative
WHERE
	`e`.`Id` = 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`e`.`Id`,
	`e`.`Value1`,
	`e`.`Value2`,
	`e`.`Enum`,
	`e`.`EnumNullable`,
	`e`.`EnumWithNull`,
	`e`.`EnumWithNullDeclarative`,
	`e`.`BoolValue`,
	`e`.`AnotherBoolValue`,
	`e`.`DateTimeNullable`
FROM
	`ValueConversion` `e`
WHERE
	`e`.`Id` = 1
LIMIT 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value1 VarChar(20) -- String
SET     @Value1 = '{"some":"updated2}"}'
DECLARE @Value2 VarChar(22) -- String
SET     @Value2 = '[{"Value":"updated2"}]'
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar -- AnsiString
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value2'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value2'
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar -- AnsiString
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable DateTime
SET     @DateTimeNullable = NULL
DECLARE @Id Int32
SET     @Id = 2

UPDATE
	`ValueConversion` `t1`
SET
	`t1`.`Value1` = @Value1,
	`t1`.`Value2` = @Value2,
	`t1`.`Enum` = @Enum,
	`t1`.`EnumNullable` = @EnumNullable,
	`t1`.`EnumWithNull` = @EnumWithNull,
	`t1`.`EnumWithNullDeclarative` = @EnumWithNullDeclarative,
	`t1`.`BoolValue` = @BoolValue,
	`t1`.`AnotherBoolValue` = @AnotherBoolValue,
	`t1`.`DateTimeNullable` = @DateTimeNullable
WHERE
	`t1`.`Id` = @Id

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`e`.`Id`,
	`e`.`Value1`,
	`e`.`Value2`,
	`e`.`Enum`,
	`e`.`EnumNullable`,
	`e`.`EnumWithNull`,
	`e`.`EnumWithNullDeclarative`,
	`e`.`BoolValue`,
	`e`.`AnotherBoolValue`,
	`e`.`DateTimeNullable`
FROM
	`ValueConversion` `e`
WHERE
	`e`.`Id` = 2
LIMIT 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value1 VarChar -- String
SET     @Value1 = NULL
DECLARE @Value2 VarChar -- String
SET     @Value2 = NULL
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar -- AnsiString
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar -- AnsiString
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative VarChar -- AnsiString
SET     @EnumWithNullDeclarative = NULL
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar -- AnsiString
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable DateTime
SET     @DateTimeNullable = NULL
DECLARE @Id Int32
SET     @Id = 3

UPDATE
	`ValueConversion` `t1`
SET
	`t1`.`Value1` = @Value1,
	`t1`.`Value2` = @Value2,
	`t1`.`Enum` = @Enum,
	`t1`.`EnumNullable` = @EnumNullable,
	`t1`.`EnumWithNull` = @EnumWithNull,
	`t1`.`EnumWithNullDeclarative` = @EnumWithNullDeclarative,
	`t1`.`BoolValue` = @BoolValue,
	`t1`.`AnotherBoolValue` = @AnotherBoolValue,
	`t1`.`DateTimeNullable` = @DateTimeNullable
WHERE
	`t1`.`Id` = @Id

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`e`.`Id`,
	`e`.`Value1`,
	`e`.`Value2`,
	`e`.`Enum`,
	`e`.`EnumNullable`,
	`e`.`EnumWithNull`,
	`e`.`EnumWithNullDeclarative`,
	`e`.`BoolValue`,
	`e`.`AnotherBoolValue`,
	`e`.`DateTimeNullable`
FROM
	`ValueConversion` `e`
WHERE
	`e`.`Id` = 3
LIMIT 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `ValueConversion`

