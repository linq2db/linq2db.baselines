﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Categories`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Categories`
(
	`CategoryID`   INT           AUTO_INCREMENT NOT NULL,
	`CategoryName` VARCHAR(4000)                NOT NULL,
	`Description`  VARCHAR(4000)                    NULL,

	CONSTRAINT `PK_Categories` PRIMARY KEY CLUSTERED (`CategoryID`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `Categories`
(
	`CategoryName`,
	`Description`
)
VALUES
('Name 1','Desc 1'),
('Name 2','Desc 2')

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Products`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Products`
(
	`ProductID`       INT           AUTO_INCREMENT NOT NULL,
	`ProductName`     VARCHAR(4000)                NOT NULL,
	`CategoryID`      INT                              NULL,
	`QuantityPerUnit` VARCHAR(4000)                    NULL,

	CONSTRAINT `PK_Products` PRIMARY KEY CLUSTERED (`ProductID`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `Products`
(
	`ProductName`,
	`CategoryID`,
	`QuantityPerUnit`
)
VALUES
('Prod 1',1,'q 1'),
('Prod 2',1,'q 2'),
('Prod 3',3,'q 3'),
('Prod 4',3,'q 4'),
('Prod 5',1,'q 5'),
('Prod 6',1,'q 6')

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`lw_Category`.`CategoryID`,
	`detail`.`ProductID`,
	`detail`.`ProductName`,
	`detail`.`CategoryID`,
	`detail`.`QuantityPerUnit`
FROM
	`Categories` `lw_Category`
		INNER JOIN `Products` `detail` ON `lw_Category`.`CategoryID` = `detail`.`CategoryID`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`CategoryID`,
	`t1`.`CategoryName`,
	`t1`.`Description`
FROM
	`Categories` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Products`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Categories`

