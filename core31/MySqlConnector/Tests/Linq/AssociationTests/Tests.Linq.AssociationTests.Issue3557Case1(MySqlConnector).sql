﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Data`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Data`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `Data`
(
	`Id`
)
VALUES
(1),
(2),
(3)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `SubData1`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SubData1`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `SubData1`
(
	`Id`
)
VALUES
(2),
(3)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `SubData2`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SubData2`
(
	`Id`     INT           NOT NULL,
	`Reason` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `SubData2`
(
	`Id`,
	`Reason`
)
VALUES
(3,'прст1'),
(3,'прст2')

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`i`.`Id`,
	`a_SubData`.`Id`,
	(
		SELECT
			`s`.`Reason`
		FROM
			`SubData2` `s`
		WHERE
			`a_SubData`.`Id` = `s`.`Id`
		LIMIT @take
	)
FROM
	`Data` `i`
		LEFT JOIN `SubData1` `a_SubData` ON `i`.`Id` = `a_SubData`.`Id`
ORDER BY
	`i`.`Id`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `SubData2`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `SubData1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Data`

