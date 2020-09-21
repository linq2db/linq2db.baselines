BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `ValueConversion`
(
	`Id`                      INT          NOT NULL,
	`Value1`                  VARCHAR(200)     NULL,
	`Value2`                  VARCHAR(200)     NULL,
	`Enum`                    VARCHAR(50)  NOT NULL,
	`EnumNullable`            VARCHAR(50)      NULL,
	`EnumWithNull`            VARCHAR(50)      NULL,
	`EnumWithNullDeclarative` VARCHAR(50)      NULL,
	`BoolValue`               VARCHAR(1)   NOT NULL,

	CONSTRAINT `PK_ValueConversion` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `ValueConversion`
(
	`Id`,
	`Value1`,
	`Value2`,
	`Enum`,
	`EnumNullable`,
	`EnumWithNull`,
	`EnumWithNullDeclarative`,
	`BoolValue`
)
VALUES
(1,'{"some":"str1"}','[{"Value":"Value1"}]','Value1','Value1','Value1','Value1','Y'),
(2,'{"some":"str2"}','[{"Value":"Value2"}]','Value2','Value2','Value2','Value2','N'),
(3,'{"some":"str3"}','[{"Value":"Value3"}]','Value3','Value3','Value3','Value3','N'),
(4,'{"some":"str4"}','[{"Value":"Value4"}]','Value1',NULL,NULL,NULL,'N'),
(5,'{"some":"str5"}','[{"Value":"Value5"}]','Value2','Value1','Value1','Value1','Y'),
(6,'{"some":"str6"}','[{"Value":"Value6"}]','Value3','Value2','Value2','Value2','N'),
(7,'{"some":"str7"}','[{"Value":"Value7"}]','Value1','Value3','Value3','Value3','N'),
(8,'{"some":"str8"}','[{"Value":"Value8"}]','Value2',NULL,NULL,NULL,'N'),
(9,'{"some":"str9"}','[{"Value":"Value9"}]','Value3','Value1','Value1','Value1','Y'),
(10,NULL,NULL,'Value1','Value2','Value2','Value2','N')

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`e`.`Id`,
	`e`.`Value1`,
	`e`.`Value2`,
	`e`.`Enum`,
	`e`.`EnumNullable`,
	`e`.`EnumWithNull`,
	`e`.`EnumWithNullDeclarative`,
	`e`.`BoolValue`
FROM
	`ValueConversion` `e`
WHERE
	`e`.`Id` = 1
LIMIT @take

BeforeExecute
-- MySqlConnector MySql
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
	`t1`.`BoolValue` = @BoolValue
WHERE
	`t1`.`Id` = @Id

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`e`.`Id`,
	`e`.`Value1`,
	`e`.`Value2`,
	`e`.`Enum`,
	`e`.`EnumNullable`,
	`e`.`EnumWithNull`,
	`e`.`EnumWithNullDeclarative`,
	`e`.`BoolValue`
FROM
	`ValueConversion` `e`
WHERE
	`e`.`Id` = 2
LIMIT @take

BeforeExecute
-- MySqlConnector MySql
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
	`t1`.`BoolValue` = @BoolValue
WHERE
	`t1`.`Id` = @Id

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`e`.`Id`,
	`e`.`Value1`,
	`e`.`Value2`,
	`e`.`Enum`,
	`e`.`EnumNullable`,
	`e`.`EnumWithNull`,
	`e`.`EnumWithNullDeclarative`,
	`e`.`BoolValue`
FROM
	`ValueConversion` `e`
WHERE
	`e`.`Id` = 3
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `ValueConversion`

