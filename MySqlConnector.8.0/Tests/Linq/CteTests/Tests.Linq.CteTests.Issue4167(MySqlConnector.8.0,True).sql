BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4167Table`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue4167Table`
(
	`ID`        INT           NOT NULL,
	`Value`     VARCHAR(4000)     NULL,
	`EnumValue` INT               NULL,

	CONSTRAINT `PK_Issue4167Table` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

WITH `CTE_1` (`EnumValue`)
AS
(
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
)
SELECT
	`t1`.`EnumValue`
FROM
	`CTE_1` `t1`
ORDER BY
	`t1`.`EnumValue`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue4167Table`

