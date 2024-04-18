BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `DisTable`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `DisTable`
(
	`DisTypeID` INT NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `JurTable`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `JurTable`
(
	`JurCode` VARCHAR(2) NOT NULL,

	CONSTRAINT `PK_JurTable` PRIMARY KEY CLUSTERED (`JurCode`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `DisTypeTable`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `DisTypeTable`
(
	`DisTypeID` INT         NOT NULL,
	`JurCode`   VARCHAR(50) NOT NULL,

	CONSTRAINT `PK_DisTypeTable` PRIMARY KEY CLUSTERED (`DisTypeID`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`d`.`DisTypeID`
FROM
	`DisTable` `d`
		INNER JOIN `DisTypeTable` `a_DisType` ON CASE
			WHEN `d`.`DisTypeID` = 1 THEN 1
			WHEN `d`.`DisTypeID` = 2 THEN 2
			WHEN `d`.`DisTypeID` = 4 THEN 4
			WHEN `d`.`DisTypeID` = 5 THEN 5
		END = `a_DisType`.`DisTypeID`
		INNER JOIN `JurTable` `j` ON `a_DisType`.`JurCode` = `j`.`JurCode`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `DisTypeTable`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `JurTable`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `DisTable`

