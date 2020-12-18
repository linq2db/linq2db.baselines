﻿BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `ValueConversion`

BeforeExecute
-- MySql MySql.Official MySql

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
	`DateTimeNullable`        DATETIME         NULL,

	CONSTRAINT `PK_ValueConversion` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

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
	`DateTimeNullable`
)
VALUES
(1,'{"some":"str1"}','[{"Value":"Value1"}]','Value1','Value1','Value1','Value1','Y',NULL),
(2,'{"some":"str2"}','[{"Value":"Value2"}]','Value2','Value2','Value2','Value2','N','2020-02-29'),
(3,'{"some":"str3"}','[{"Value":"Value3"}]','Value3','Value3','Value3','Value3','N','2020-02-29'),
(4,'{"some":"str4"}','[{"Value":"Value4"}]','Value1',NULL,NULL,NULL,'N',NULL),
(5,'{"some":"str5"}','[{"Value":"Value5"}]','Value2','Value1','Value1','Value1','Y','2020-02-29'),
(6,'{"some":"str6"}','[{"Value":"Value6"}]','Value3','Value2','Value2','Value2','N','2020-02-29'),
(7,'{"some":"str7"}','[{"Value":"Value7"}]','Value1','Value3','Value3','Value3','N',NULL),
(8,'{"some":"str8"}','[{"Value":"Value8"}]','Value2',NULL,NULL,NULL,'N','2020-02-29'),
(9,'{"some":"str9"}','[{"Value":"Value9"}]','Value3','Value1','Value1','Value1','Y','2020-02-29'),
(10,NULL,NULL,'Value1','Value2','Value2','Value2','N',NULL)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'Y'

SELECT
	`t1`.`Enum`
FROM
	`ValueConversion` `t1`
		INNER JOIN (
			SELECT
				`t2`.`BoolValue`
			FROM
				`ValueConversion` `t2`
		) `t2_1` ON `t2_1`.`BoolValue` = @BoolValue AND `t1`.`BoolValue` = @BoolValue

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `ValueConversion`

