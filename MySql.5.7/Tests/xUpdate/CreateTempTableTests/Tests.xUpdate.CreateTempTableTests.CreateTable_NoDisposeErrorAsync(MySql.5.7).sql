-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `TempTable`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TEMPORARY TABLE `TempTable`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_TempTable` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TEMPORARY TABLE `TempTable`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TEMPORARY TABLE IF EXISTS `TempTable`

