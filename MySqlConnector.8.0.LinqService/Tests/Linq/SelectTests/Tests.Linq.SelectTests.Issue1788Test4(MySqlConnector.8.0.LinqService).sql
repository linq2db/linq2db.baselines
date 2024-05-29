BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Table1788`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Table1788`
(
	`Id`     INT NOT NULL,
	`Value1` INT NOT NULL,

	CONSTRAINT `PK_Table1788` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value1 Int32
SET     @Value1 = 11

INSERT INTO `Table1788`
(
	`Id`,
	`Value1`
)
VALUES
(
	@Id,
	@Value1
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value1 Int32
SET     @Value1 = 22

INSERT INTO `Table1788`
(
	`Id`,
	`Value1`
)
VALUES
(
	@Id,
	@Value1
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Value1 Int32
SET     @Value1 = 33

INSERT INTO `Table1788`
(
	`Id`,
	`Value1`
)
VALUES
(
	@Id,
	@Value1
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Value1`
FROM
	`Table1788` `t1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`l`.`Id`,
	`l`.`Value1`
FROM
	`Table1788` `p`
		LEFT JOIN `Table1788` `l` ON `l`.`Id` = `p`.`Id` + 1

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Table1788`

