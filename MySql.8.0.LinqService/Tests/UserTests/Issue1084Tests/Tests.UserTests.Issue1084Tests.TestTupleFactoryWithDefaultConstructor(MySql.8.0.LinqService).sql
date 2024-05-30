BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `i1084_person`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `i1084_person`
(
	`Id`            INT NOT NULL,
	`Number`        INT NOT NULL,
	`StatusBitmask` INT NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `i1084_student`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `i1084_student`
(
	`Id`            INT           NOT NULL,
	`Number`        VARCHAR(4000)     NULL,
	`StatusBitmask` INT           NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`StatusBitmask` & 128,
	`g_1`.`StatusBitmask` & 128
FROM
	`i1084_person` `t1`
		LEFT JOIN `i1084_student` `g_1` ON `t1`.`Id` = `g_1`.`Id` AND CAST(`t1`.`Number` AS CHAR(11)) = `g_1`.`Number`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `i1084_student`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `i1084_person`

