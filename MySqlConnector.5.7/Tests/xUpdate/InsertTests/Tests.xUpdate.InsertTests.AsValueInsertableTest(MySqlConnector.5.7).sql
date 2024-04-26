BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `TestInsertOrReplaceTable`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `TestInsertOrReplaceTable`
(
	`ID`         INT           NOT NULL,
	`FirstName`  VARCHAR(4000)     NULL,
	`LastName`   VARCHAR(4000)     NULL,
	`MiddleName` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_TestInsertOrReplaceTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 123
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'

INSERT INTO `TestInsertOrReplaceTable`
(
	`ID`,
	`FirstName`
)
VALUES
(
	@ID,
	@FirstName
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`TestInsertOrReplaceTable` `x`
WHERE
	`x`.`ID` = 123 AND `x`.`FirstName` = 'John'

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `TestInsertOrReplaceTable`

