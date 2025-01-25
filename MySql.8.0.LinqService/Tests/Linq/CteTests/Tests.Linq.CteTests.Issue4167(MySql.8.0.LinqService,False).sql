BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4167Table`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue4167Table`
(
	`ID`        INT           NOT NULL,
	`Value`     VARCHAR(4000)     NULL,
	`EnumValue` INT               NULL,

	CONSTRAINT `PK_Issue4167Table` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CASE
		WHEN `g_1`.`EnumValue` IS NOT NULL THEN `g_1`.`EnumValue`
		ELSE 0
	END
FROM
	`Issue4167Table` `g_1`
WHERE
	`g_1`.`Value` = '000001'
GROUP BY
	`g_1`.`Value`,
	`g_1`.`EnumValue`
ORDER BY
	CASE
		WHEN `g_1`.`EnumValue` IS NOT NULL THEN `g_1`.`EnumValue`
		ELSE 0
	END

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4167Table`

