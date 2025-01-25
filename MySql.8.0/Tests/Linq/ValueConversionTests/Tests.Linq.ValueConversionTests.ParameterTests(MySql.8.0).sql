BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `ValueConversion`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @testedList VarChar(20) -- String
SET     @testedList = '[{"Value":"Value1"}]'

SELECT
	`t`.`Id`,
	`t`.`Value1`,
	`t`.`Value2`
FROM
	`ValueConversion` `t`
WHERE
	@testedList = `t`.`Value2`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `ValueConversion`

