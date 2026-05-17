-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `TestIdTrun`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE `TestIdTrun`
(
	`ID`     INT             AUTO_INCREMENT NOT NULL,
	`Field1` DECIMAL(29, 10)                NOT NULL,

	CONSTRAINT `PK_TestIdTrun` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `TestIdTrun`
(
	`Field1`
)
VALUES
(
	1
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `TestIdTrun`
(
	`Field1`
)
VALUES
(
	1
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

TRUNCATE TABLE `TestIdTrun`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `TestIdTrun`
(
	`Field1`
)
VALUES
(
	1
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `TestIdTrun`
(
	`Field1`
)
VALUES
(
	1
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE `TestIdTrun`

