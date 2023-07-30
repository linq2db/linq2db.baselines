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
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Value VarChar(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue Int32
SET     @EnumValue = 0

INSERT INTO `Issue4167Table`
(
	`ID`,
	`Value`,
	`EnumValue`
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 2
DECLARE @Value VarChar(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue Int32
SET     @EnumValue = 3

INSERT INTO `Issue4167Table`
(
	`ID`,
	`Value`,
	`EnumValue`
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 3
DECLARE @Value VarChar(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue Int32
SET     @EnumValue = NULL

INSERT INTO `Issue4167Table`
(
	`ID`,
	`Value`,
	`EnumValue`
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @ID Int32
SET     @ID = 4
DECLARE @Value VarChar(6) -- String
SET     @Value = '000002'
DECLARE @EnumValue Int32
SET     @EnumValue = 0

INSERT INTO `Issue4167Table`
(
	`ID`,
	`Value`,
	`EnumValue`
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @default Int32
SET     @default = 0

SELECT
	`t`.`EnumValue`
FROM
	`Issue4167Table` `t`
WHERE
	`t`.`Value` = '000001'
GROUP BY
	`t`.`Value`,
	`t`.`EnumValue`
ORDER BY
	Coalesce(`t`.`EnumValue`, @default)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue4167Table`

