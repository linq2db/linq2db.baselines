BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `HierarchyTree`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `HierarchyTree`
(
	`Id`       INT NOT NULL,
	`ParentId` INT     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `HierarchyTree`
(
	`Id`,
	`ParentId`
)
VALUES
(1,NULL),
(2,NULL),
(10,1),
(11,1),
(20,2),
(22,2),
(100,10),
(101,10),
(102,10),
(110,11),
(111,11),
(112,11),
(200,20),
(201,20),
(202,20),
(210,21),
(211,21),
(212,21)

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `HierarchyTree`

