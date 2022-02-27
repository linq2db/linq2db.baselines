BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `GroupSampleClass`
(
	`Id1`   INT NOT NULL,
	`Id2`   INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `GroupSampleClass`
(
	`Id1`,
	`Id2`,
	`Value`
)
VALUES
(1,1,1),
(2,2,0),
(3,0,1),
(4,1,0),
(5,2,1),
(6,0,0),
(7,1,1),
(8,2,0),
(9,0,1),
(10,1,0)

BeforeExecute
-- MySqlConnector MySql

SELECT
	GROUPING(`t1`.`Key_1`, `t1`.`Key_2`),
	`t1`.`Key_1`,
	Count(*)
FROM
	(
		SELECT DISTINCT
			`selectParam`.`Id1` as `Key_1`,
			`selectParam`.`Id2` as `Key_2`,
			`selectParam`.`Value` as `Value_1`
		FROM
			`GroupSampleClass` `selectParam`
	) `t1`
GROUP BY
	`t1`.`Key_1`,
	`t1`.`Key_2`
WITH ROLLUP

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `GroupSampleClass`

