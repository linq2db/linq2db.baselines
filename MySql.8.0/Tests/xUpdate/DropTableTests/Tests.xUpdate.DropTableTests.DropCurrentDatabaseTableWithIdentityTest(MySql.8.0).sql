-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `DropTableTestID`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE `DropTableTestID`
(
	`ID`  INT AUTO_INCREMENT NOT NULL,
	`ID1` INT                NOT NULL,

	CONSTRAINT `PK_DropTableTestID` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `DropTableTestID`
(
	`ID1`
)
VALUES
(
	2
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`ID`,
	`t`.`ID1`
FROM
	`DropTableTestID` `t`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE `DropTableTestID`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ID`,
	`t1`.`ID1`
FROM
	`DropTableTestID` `t1`

