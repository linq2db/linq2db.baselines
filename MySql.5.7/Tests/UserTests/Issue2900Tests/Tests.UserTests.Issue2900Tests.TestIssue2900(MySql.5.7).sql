﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Request`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Request`
(
	`Id` INT AUTO_INCREMENT NOT NULL,

	CONSTRAINT `PK_Request` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Metric`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Metric`
(
	`Id`        INT    AUTO_INCREMENT NOT NULL,
	`RequestId` INT                   NOT NULL,
	`Value`     DOUBLE                    NULL,

	CONSTRAINT `PK_Metric` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	(
		SELECT
			1
		FROM
			`Metric` `a_Metrics`
		WHERE
			`a`.`Id` = `a_Metrics`.`RequestId`
		LIMIT 1
	),
	(
		SELECT
			CASE
				WHEN `a_Metrics_1`.`Value` IS NOT NULL THEN 1
				ELSE 0
			END
		FROM
			`Metric` `a_Metrics_1`
		WHERE
			`a`.`Id` = `a_Metrics_1`.`RequestId`
		LIMIT 1
	),
	(
		SELECT
			`a_Metrics_2`.`Value`
		FROM
			`Metric` `a_Metrics_2`
		WHERE
			`a`.`Id` = `a_Metrics_2`.`RequestId`
		LIMIT 1
	)
FROM
	`Request` `a`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Metric`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Request`

