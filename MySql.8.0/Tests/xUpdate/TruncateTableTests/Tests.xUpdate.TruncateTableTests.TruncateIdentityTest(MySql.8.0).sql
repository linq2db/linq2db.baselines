-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TestIdTrun`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE `TestIdTrun`
(
	`ID`     INT             AUTO_INCREMENT NOT NULL,
	`Field1` DECIMAL(29, 10)                NOT NULL,

	CONSTRAINT `PK_TestIdTrun` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `TestIdTrun`
(
	`Field1`
)
VALUES
(
	1
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `TestIdTrun`
(
	`Field1`
)
VALUES
(
	1
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @skip Int32
SET     @skip = 1

SELECT
	`t1`.`ID`,
	`t1`.`Field1`
FROM
	`TestIdTrun` `t1`
ORDER BY
	`t1`.`ID`
LIMIT @skip, 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

TRUNCATE TABLE `TestIdTrun`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `TestIdTrun`
(
	`Field1`
)
VALUES
(
	1
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `TestIdTrun`
(
	`Field1`
)
VALUES
(
	1
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @skip Int32
SET     @skip = 1

SELECT
	`t1`.`ID`,
	`t1`.`Field1`
FROM
	`TestIdTrun` `t1`
ORDER BY
	`t1`.`ID`
LIMIT @skip, 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE `TestIdTrun`

