-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TEMPORARY TABLE `temp_table_2`
(
	`Value` VARCHAR(4000)     NULL
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `temp_table_2`
(
	`Value`
)
SELECT
	`t1`.`Value_1`
FROM
	(
		SELECT
			`gr`.`ID`
		FROM
			`temp_table_1` `gr`
		GROUP BY
			`gr`.`ID`
	) `gr_1`
		INNER JOIN LATERAL (
			SELECT
				`c_1`.`Value` as `Value_1`
			FROM
				`temp_table_1` `c_1`
			WHERE
				`gr_1`.`ID` = `c_1`.`ID`
			LIMIT 1
		) `t1` ON 1=1

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TEMPORARY TABLE IF EXISTS `temp_table_2`

