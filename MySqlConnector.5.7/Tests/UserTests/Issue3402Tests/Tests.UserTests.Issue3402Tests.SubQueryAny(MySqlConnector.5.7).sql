BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `VEMPLOYEE_SCH_SEC`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `VEMPLOYEE_SCH_SEC`
(
	`ACTIVE` BOOLEAN       NOT NULL,
	`ID`     INT           NOT NULL,
	`NAME`   VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_VEMPLOYEE_SCH_SEC` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `VEMPLOYEE_SCHDL_PERM`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `VEMPLOYEE_SCHDL_PERM`
(
	`ID`        INT     NOT NULL,
	`IS_ACTIVE` BOOLEAN NOT NULL,

	CONSTRAINT `PK_VEMPLOYEE_SCHDL_PERM` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`ess`.`ID`
FROM
	`VEMPLOYEE_SCH_SEC` `ess`
WHERE
	EXISTS(
		SELECT
			1
		FROM
			`VEMPLOYEE_SCHDL_PERM` `y`
		WHERE
			`ess`.`ID` = `y`.`ID` AND `y`.`IS_ACTIVE` = 1
	)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `VEMPLOYEE_SCHDL_PERM`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `VEMPLOYEE_SCH_SEC`

