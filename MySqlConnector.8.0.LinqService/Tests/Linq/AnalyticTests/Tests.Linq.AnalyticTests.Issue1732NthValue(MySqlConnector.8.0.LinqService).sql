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
DECLARE @Group Int32
SET     @Group = 7
DECLARE @Order Int32
SET     @Order = 10
DECLARE @Id Int32
SET     @Id = 5

INSERT INTO `Position`
(
	`Group`,
	`Order`,
	`Id`
)
VALUES
(
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Group Int32
SET     @Group = 7
DECLARE @Order Int32
SET     @Order = 20
DECLARE @Id Int32
SET     @Id = 6

INSERT INTO `Position`
(
	`Group`,
	`Order`,
	`Id`
)
VALUES
(
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Group Int32
SET     @Group = 7
DECLARE @Order Int32
SET     @Order = 30
DECLARE @Id Int32
SET     @Id = NULL

INSERT INTO `Position`
(
	`Group`,
	`Order`,
	`Id`
)
VALUES
(
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Group Int32
SET     @Group = 7
DECLARE @Order Int32
SET     @Order = 40
DECLARE @Id Int32
SET     @Id = NULL

INSERT INTO `Position`
(
	`Group`,
	`Order`,
	`Id`
)
VALUES
(
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @group Int32
SET     @group = 7

SELECT
	`p_1`.`Id`,
	NTH_VALUE(`p_1`.`Id`, 2) FROM FIRST OVER(ORDER BY `p_1`.`Order_1` DESC)
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

