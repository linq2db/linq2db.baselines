BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `VEMPLOYEE_SCH_SEC`
(
	`ACTIVE` BOOLEAN      NOT NULL,
	`ID`     INT          NOT NULL,
	`NAME`   VARCHAR(255) NOT NULL,

	CONSTRAINT `PK_VEMPLOYEE_SCH_SEC` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `VEMPLOYEE_SCHDL_PERM`
(
	`ID`        INT     NOT NULL,
	`IS_ACTIVE` BOOLEAN NOT NULL,

	CONSTRAINT `PK_VEMPLOYEE_SCHDL_PERM` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`ID`
FROM
	(
		SELECT
			CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						`VEMPLOYEE_SCHDL_PERM` `y`
					WHERE
						`ess`.`ID` = `y`.`ID` AND `y`.`IS_ACTIVE` = 1
				)
					THEN 1
				ELSE 0
			END as `allowEdit`,
			`ess`.`ID`
		FROM
			`VEMPLOYEE_SCH_SEC` `ess`
	) `t1`
WHERE
	`t1`.`allowEdit` = 1 AND `t1`.`allowEdit` IS NOT NULL

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`ID`
FROM
	(
		SELECT
			1 as `allowEdit`,
			`ess`.`ID`
		FROM
			`VEMPLOYEE_SCH_SEC` `ess`
	) `t1`
WHERE
	`t1`.`allowEdit` = 1 AND `t1`.`allowEdit` IS NOT NULL

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `VEMPLOYEE_SCHDL_PERM`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `VEMPLOYEE_SCH_SEC`

