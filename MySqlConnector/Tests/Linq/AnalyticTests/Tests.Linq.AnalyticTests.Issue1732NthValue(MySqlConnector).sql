BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Position`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Position`
(
	`Group` INT NOT NULL,
	`Order` INT NOT NULL,
	`Id`    INT     NULL
)

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql
DECLARE @group Int32
SET     @group = 7

SELECT
	`p`.`Id`,
	NTH_VALUE(`p`.`Id`, 2) FROM FIRST OVER(ORDER BY `p`.`Order` DESC)
FROM
	`Position` `p`
WHERE
	`p`.`Group` = @group

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Position`

