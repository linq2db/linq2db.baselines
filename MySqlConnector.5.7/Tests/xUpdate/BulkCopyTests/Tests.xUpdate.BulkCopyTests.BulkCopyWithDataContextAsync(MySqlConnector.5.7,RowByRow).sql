BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `SimpleBulkCopyTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

