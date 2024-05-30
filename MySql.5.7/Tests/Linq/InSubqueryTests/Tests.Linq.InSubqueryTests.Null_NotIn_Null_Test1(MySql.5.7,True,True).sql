BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `test_in_1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `test_in_1`
(
	`ID` INT     NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `test_in_1`
(
	`ID`
)
VALUES
(1),
(3),
(4),
(5),
(NULL)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `test_in_2`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `test_in_2`
(
	`ID` INT     NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `test_in_2`
(
	`ID`
)
VALUES
(1),
(2),
(4),
(6),
(NULL)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`ID`
FROM
	`test_in_1` `t`
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			`test_in_2` `p`
		WHERE
			(`t`.`ID` = `p`.`ID` OR `t`.`ID` IS NULL AND `p`.`ID` IS NULL)
	)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ID`
FROM
	`test_in_1` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ID`
FROM
	`test_in_2` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `test_in_2`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `test_in_1`

