﻿BeforeExecute
-- MySql

DROP TABLE IF EXISTS `GroupSampleClass`

BeforeExecute
-- MySql

CREATE TABLE IF NOT EXISTS `GroupSampleClass`
(
	`Id1`   INT NOT NULL,
	`Id2`   INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql

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
-- MySql

SELECT
	GROUPING(`t1`.`Id1`, `t1`.`Id2`),
	`t1`.`Id1`,
	Count(*)
FROM
	(
		SELECT DISTINCT
			`selectParam`.`Id1`,
			`selectParam`.`Id2`,
			`selectParam`.`Value` as `Value_1`
		FROM
			`GroupSampleClass` `selectParam`
	) `t1`
GROUP BY
	`t1`.`Id1`,
	`t1`.`Id2`
WITH ROLLUP

BeforeExecute
-- MySql

DROP TABLE IF EXISTS `GroupSampleClass`

