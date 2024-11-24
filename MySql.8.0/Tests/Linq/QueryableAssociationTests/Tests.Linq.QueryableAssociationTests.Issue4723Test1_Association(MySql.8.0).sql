BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4723Table1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue4723Table1`
(
	`Id`               INT           NOT NULL,
	`ExpressionMethod` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Issue4723Table1`
(
	`Id`,
	`ExpressionMethod`
)
VALUES
(1,NULL)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4723Table2`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue4723Table2`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Issue4723Table2`
(
	`Id`,
	`Value`
)
VALUES
(1,'Value 1'),
(1,'Value 1'),
(2,'Value 2')

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t2`.`Id`,
	(
		SELECT
			`se`.`Value`
		FROM
			`Issue4723Table2` `se`
		WHERE
			`se`.`Id` = `t2`.`Id`
		LIMIT 1
	),
	`t1`.`Association`
FROM
	`Issue4723Table1` `t2`
		LEFT JOIN LATERAL (
			SELECT
				`a_Association`.`Value` as `Association`
			FROM
				`Issue4723Table2` `a_Association`
			WHERE
				`a_Association`.`Id` = `t2`.`Id`
			LIMIT 1
		) `t1` ON 1=1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4723Table2`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue4723Table1`

