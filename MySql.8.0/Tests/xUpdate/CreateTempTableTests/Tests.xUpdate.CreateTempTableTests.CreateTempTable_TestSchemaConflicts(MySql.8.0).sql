BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `TestTempTable`
(
	`Id`,
	`Value`
)
VALUES
(
	1,
	'value'
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `TempTable`
(
	`Id`      INT           NOT NULL,
	`Renamed` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `TempTable`
(
	`Id`,
	`Renamed`
)
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestTempTable` `t1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `TestTempTable`
(
	`Id`,
	`Value`
)
VALUES
(
	2,
	'value 2'
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `TempTable`
(
	`Id`,
	`Renamed`
)
VALUES
(
	2,
	'renamed 2'
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TestTempTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Renamed`
FROM
	`TempTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TempTable`

