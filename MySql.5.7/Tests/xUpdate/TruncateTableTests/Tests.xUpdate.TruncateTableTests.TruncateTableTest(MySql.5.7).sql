-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `TestTrun`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE `TestTrun`
(
	`ID`     INT             NOT NULL,
	`Field1` DECIMAL(29, 10) NOT NULL,

	CONSTRAINT `PK_TestTrun` PRIMARY KEY CLUSTERED (`ID`)
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

TRUNCATE TABLE `TestTrun`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE `TestTrun`

