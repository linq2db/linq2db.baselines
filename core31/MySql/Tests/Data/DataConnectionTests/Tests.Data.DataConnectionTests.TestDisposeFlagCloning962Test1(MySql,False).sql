BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Categories`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Categories`
(
	`CategoryID`   INT          AUTO_INCREMENT NOT NULL,
	`CategoryName` VARCHAR(255)                NOT NULL,
	`Description`  VARCHAR(255)                    NULL,

	CONSTRAINT `PK_Categories` PRIMARY KEY CLUSTERED (`CategoryID`)
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `Categories`
(
	`CategoryName`,
	`Description`
)
VALUES
('Name 1','Desc 1'),
('Name 2','Desc 2')

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Products`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Products`
(
	`ProductID`       INT          AUTO_INCREMENT NOT NULL,
	`ProductName`     VARCHAR(255)                NOT NULL,
	`CategoryID`      INT                             NULL,
	`QuantityPerUnit` VARCHAR(255)                    NULL,

	CONSTRAINT `PK_Products` PRIMARY KEY CLUSTERED (`ProductID`)
)

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Products`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Categories`

