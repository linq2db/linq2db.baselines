BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `MainTable`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `MainTable`
(
	`Id`    INT           NOT NULL,
	`Field` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `MainTable`
(
	`Id`,
	`Field`
)
VALUES
(1,'value 1'),
(2,'value 2'),
(3,'value 3')

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `AssociatedTable`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `AssociatedTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `AssociatedTable`
(
	`Id`
)
VALUES
(1),
(3)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id Int32
SET     @id = 3

UPDATE
	`MainTable` `a_MainOptional`,
	`AssociatedTable` `pat`
SET
	`a_MainOptional`.`Field` = 'test'
WHERE
	`pat`.`Id` = @id AND `pat`.`Id` = `a_MainOptional`.`Id`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Field`
FROM
	`MainTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `AssociatedTable`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `MainTable`

