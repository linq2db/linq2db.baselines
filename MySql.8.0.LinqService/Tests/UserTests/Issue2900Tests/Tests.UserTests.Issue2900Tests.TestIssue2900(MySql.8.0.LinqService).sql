BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Request`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Request`
(
	`Id` INT AUTO_INCREMENT NOT NULL,

	CONSTRAINT `PK_Request` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Metric`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Metric`
(
	`Id`        INT    AUTO_INCREMENT NOT NULL,
	`RequestId` INT                   NOT NULL,
	`Value`     DOUBLE                    NULL,

	CONSTRAINT `PK_Metric` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`not_null`,
	`t1`.`Value_1`
FROM
	`Request` `a`
		LEFT JOIN LATERAL (
			SELECT
				`a_Metrics`.`Value` as `Value_1`,
				1 as `not_null`
			FROM
				`Metric` `a_Metrics`
			WHERE
				`a`.`Id` = `a_Metrics`.`RequestId`
			LIMIT 1
		) `t1` ON 1=1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Metric`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Request`

