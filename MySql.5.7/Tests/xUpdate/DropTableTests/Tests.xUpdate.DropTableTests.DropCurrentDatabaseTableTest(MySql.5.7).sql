BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `DropTableTest`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_DropTableTest` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `DropTableTest`
(
	`ID`
)
VALUES
(
	123
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE `DropTableTest`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

