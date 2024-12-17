BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Mixed`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Mixed`
(
	`Int`    INT           NOT NULL,
	`Str`    VARCHAR(4000)     NULL,
	`Date`   DATETIME      NOT NULL,
	`Double` DOUBLE        NOT NULL,
	`Bool`   BOOLEAN       NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `Mixed`
(
	`Int`,
	`Str`,
	`Date`,
	`Double`,
	`Bool`
)
VALUES
(1,'One','2001-01-01',1,1),
(2,'Two','2002-02-02',2,0)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Mixed` `t`
WHERE
	`t`.`Int` > 0 AND (`t`.`Str`, `t`.`Double`, `t`.`Bool`) = ('One', 1, 1) AND
	 EXISTS (
		SELECT
			*
		FROM
			`Mixed` `u`
		WHERE
			(2, `u`.`Date`) > (`u`.`Int`, `t`.`Date`)
	)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Mixed`

