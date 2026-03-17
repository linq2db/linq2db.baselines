-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `DropTableTestID`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE `DropTableTestID`
(
	`ID`  INT AUTO_INCREMENT NOT NULL,
	`ID1` INT                NOT NULL,

	CONSTRAINT `PK_DropTableTestID` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `DropTableTestID`
(
	`ID1`
)
VALUES
(
	2
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`ID`,
	`t`.`ID1`
FROM
	`DropTableTestID` `t`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE `DropTableTestID`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ID`,
	`t1`.`ID1`
FROM
	`DropTableTestID` `t1`

