-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `DropTableTest`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `DropTableTest`
(
	`ID`
)
VALUES
(
	123
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE `DropTableTest`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

