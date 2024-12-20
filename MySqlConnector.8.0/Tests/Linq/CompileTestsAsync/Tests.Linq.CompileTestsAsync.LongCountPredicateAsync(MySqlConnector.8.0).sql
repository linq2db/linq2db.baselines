BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `AsyncDataTable`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `AsyncDataTable`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_AsyncDataTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `AsyncDataTable`
(
	`Id`
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @p Int32
SET     @p = 2

SELECT
	COUNT(*)
FROM
	`AsyncDataTable` `c_1`
WHERE
	`c_1`.`Id` = @p

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `AsyncDataTable`

