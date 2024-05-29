BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `GroupSampleClass`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `GroupSampleClass`
(
	`Id1`   INT NOT NULL,
	`Id2`   INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	GROUPING(`g_2`.`Id1`, `g_2`.`Id2`),
	`g_2`.`Id1`,
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			`g_1`.`Id1`,
			`g_1`.`Id2`,
			`g_1`.`Value` as `Value_1`
		FROM
			`GroupSampleClass` `g_1`
	) `g_2`
GROUP BY
	`g_2`.`Id1`,
	`g_2`.`Id2`
WITH ROLLUP

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `GroupSampleClass`

