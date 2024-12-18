BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `DisTable`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `DisTable`
(
	`DisTypeID` INT NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `JurTable`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `JurTable`
(
	`JurCode` VARCHAR(2) NOT NULL,

	CONSTRAINT `PK_JurTable` PRIMARY KEY CLUSTERED (`JurCode`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `DisTypeTable`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `DisTypeTable`
(
	`DisTypeID` INT         NOT NULL,
	`JurCode`   VARCHAR(50) NOT NULL,

	CONSTRAINT `PK_DisTypeTable` PRIMARY KEY CLUSTERED (`DisTypeID`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`d`.`DisTypeID`
FROM
	`DisTable` `d`
		INNER JOIN `DisTypeTable` `a_DisType` ON CASE
			WHEN `d`.`DisTypeID` = 1 THEN 1
			WHEN `d`.`DisTypeID` = 2 THEN 2
			WHEN `d`.`DisTypeID` = 4 THEN 4
			WHEN `d`.`DisTypeID` = 5 THEN 5
		END = `a_DisType`.`DisTypeID` AND CASE
			WHEN `d`.`DisTypeID` = 1 THEN 1
			WHEN `d`.`DisTypeID` = 2 THEN 2
			WHEN `d`.`DisTypeID` = 4 THEN 4
			WHEN `d`.`DisTypeID` = 5 THEN 5
		END IS NOT NULL
		INNER JOIN `JurTable` `j` ON `a_DisType`.`JurCode` = `j`.`JurCode`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `DisTypeTable`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `JurTable`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `DisTable`

