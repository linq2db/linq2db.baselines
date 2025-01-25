BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Categories`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Categories`
(
	`CategoryID`   INT           AUTO_INCREMENT NOT NULL,
	`CategoryName` VARCHAR(4000)                NOT NULL,
	`Description`  VARCHAR(4000)                    NULL,

	CONSTRAINT `PK_Categories` PRIMARY KEY CLUSTERED (`CategoryID`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `Categories`
(
	`CategoryName`,
	`Description`
)
VALUES
('Name 1','Desc 1'),
('Name 2','Desc 2')

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Products`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Products`
(
	`ProductID`       INT           AUTO_INCREMENT NOT NULL,
	`ProductName`     VARCHAR(4000)                NOT NULL,
	`CategoryID`      INT                              NULL,
	`QuantityPerUnit` VARCHAR(4000)                    NULL,

	CONSTRAINT `PK_Products` PRIMARY KEY CLUSTERED (`ProductID`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`m_1`.`CategoryID`,
	`d`.`ProductID`,
	`d`.`ProductName`,
	`d`.`CategoryID`,
	`d`.`QuantityPerUnit`
FROM
	`Categories` `m_1`
		INNER JOIN `Products` `d` ON `m_1`.`CategoryID` = `d`.`CategoryID`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`CategoryID`,
	`t1`.`CategoryName`,
	`t1`.`Description`
FROM
	`Categories` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Products`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Categories`

