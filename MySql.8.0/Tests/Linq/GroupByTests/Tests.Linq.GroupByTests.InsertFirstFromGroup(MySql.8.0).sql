-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE `temp_table_1`
(
	`ID`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_temp_table_1` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `temp_table_1`
(
	`ID`,
	`Value`
)
VALUES
(1,'Value')

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE `temp_table_2`
(
	`Value` VARCHAR(50) NOT NULL,

	CONSTRAINT `PK_temp_table_2` PRIMARY KEY CLUSTERED (`Value`)
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `temp_table_2`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `temp_table_1`

