BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `test_in_1`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `test_in_1`
(
	`ID` INT     NULL
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 1

INSERT INTO `test_in_1`
(
	`ID`
)
VALUES
(
	@ID
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 3

INSERT INTO `test_in_1`
(
	`ID`
)
VALUES
(
	@ID
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 4

INSERT INTO `test_in_1`
(
	`ID`
)
VALUES
(
	@ID
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 5

INSERT INTO `test_in_1`
(
	`ID`
)
VALUES
(
	@ID
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = NULL

INSERT INTO `test_in_1`
(
	`ID`
)
VALUES
(
	@ID
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `test_in_2`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `test_in_2`
(
	`ID` INT     NULL
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 1

INSERT INTO `test_in_2`
(
	`ID`
)
VALUES
(
	@ID
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 2

INSERT INTO `test_in_2`
(
	`ID`
)
VALUES
(
	@ID
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 4

INSERT INTO `test_in_2`
(
	`ID`
)
VALUES
(
	@ID
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 6

INSERT INTO `test_in_2`
(
	`ID`
)
VALUES
(
	@ID
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = NULL

INSERT INTO `test_in_2`
(
	`ID`
)
VALUES
(
	@ID
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`ID`
FROM
	`test_in_1` `t1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `test_in_2`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `test_in_1`

