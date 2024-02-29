BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue4167Table`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue4167Table`
(
	`ID`        INT           NOT NULL,
	`Value`     VARCHAR(4000)     NULL,
	`EnumValue` INT               NULL,

	CONSTRAINT `PK_Issue4167Table` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Issue4167Table`
(
	`ID`,
	`Value`,
	`EnumValue`
)
VALUES
(1,'000001',0),
(2,'000001',3),
(3,'000001',NULL),
(4,'000002',0)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @default Int32
SET     @default = 0

WITH `CTE_1` (`EnumValue`)
AS
(
	SELECT
		Coalesce(`t`.`EnumValue`, @default)
	FROM
		`Issue4167Table` `t`
	WHERE
		`t`.`Value` = '000001'
	GROUP BY
		`t`.`Value`,
		`t`.`EnumValue`
)
SELECT
	`r`.`EnumValue`
FROM
	`CTE_1` `r`
ORDER BY
	`r`.`EnumValue`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue4167Table`

