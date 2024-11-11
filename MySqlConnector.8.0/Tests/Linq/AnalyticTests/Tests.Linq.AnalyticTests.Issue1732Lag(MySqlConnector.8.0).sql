BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Position`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Position`
(
	`Group` INT NOT NULL,
	`Order` INT NOT NULL,
	`Id`    INT     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Position`
(
	`Group`,
	`Order`,
	`Id`
)
VALUES
(7,10,5),
(7,20,6),
(7,30,NULL),
(7,40,NULL)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @group Int32
SET     @group = 7

SELECT
	`p_1`.`Id`,
	LAG(`p_1`.`Id`, 1, -1) OVER(ORDER BY `p_1`.`Order_1`)
FROM
	(
		SELECT
			`p`.`Id`,
			`p`.`Order` as `Order_1`
		FROM
			`Position` `p`
		WHERE
			`p`.`Group` = @group
	) `p_1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Position`

