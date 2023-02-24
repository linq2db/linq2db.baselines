﻿BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `ValueConversion`

BeforeExecute
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Enum`,
	`t1`.`EnumNullable`,
	`t1`.`EnumWithNull`,
	`t1`.`EnumWithNullDeclarative`,
	`t1`.`BoolValue`,
	`t1`.`AnotherBoolValue`,
	`t1`.`DateTimeNullable`
FROM
	`ValueConversion` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t`.`Id`,
	`t`.`Value1`,
	`t`.`Value2`
FROM
	`ValueConversion` `t`
ORDER BY
	`t`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value1`,
	`t1`.`Value2`
FROM
	(
		SELECT
			`t`.`Id`,
			`t`.`Value1`,
			`t`.`Value2`
		FROM
			`ValueConversion` `t`
	) `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t2`.`Id`,
	`t2`.`Value1`,
	`t2`.`Value2`
FROM
	(
		SELECT
			`t`.`Id`,
			`t`.`Value1`,
			`t`.`Value2`
		FROM
			`ValueConversion` `t`
		UNION ALL
		SELECT
			`t1`.`Id`,
			`t1`.`Value1`,
			`t1`.`Value2`
		FROM
			(
				SELECT
					`t_1`.`Id`,
					`t_1`.`Value1`,
					`t_1`.`Value2`
				FROM
					`ValueConversion` `t_1`
			) `t1`
	) `t2`
ORDER BY
	`t2`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 1

SELECT
	`q`.`Value2`
FROM
	(
		SELECT
			`t`.`Id`,
			`t`.`Value2`
		FROM
			`ValueConversion` `t`
	) `q`
ORDER BY
	`q`.`Id`
LIMIT @skip, @take

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `ValueConversion`

