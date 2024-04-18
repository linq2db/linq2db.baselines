﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `HierarchyTree`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `HierarchyTree`
(
	`Id`       INT NOT NULL,
	`ParentId` INT     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `HierarchyData`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `HierarchyData`
(
	`Id`    INT NOT NULL,
	`Level` INT NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `HierarchyData`
(
	`Id`,
	`Level`
)
WITH RECURSIVE `CTE_1` (`Id`)
AS
(
	SELECT
		`t`.`Id`
	FROM
		`HierarchyTree` `t`
	WHERE
		`t`.`ParentId` IS NULL
),
`CTE_2` (`ParentId`, `Id`)
AS
(
	SELECT
		`t1`.`ParentId`,
		`t1`.`Id`
	FROM
		`HierarchyTree` `t1`
),
`hierarchyDown` (`Id`, `Level`)
AS
(
	SELECT
		`t_1`.`Id`,
		0
	FROM
		`CTE_1` `t_1`
	UNION ALL
	SELECT
		`t_2`.`Id`,
		`h`.`Level` + 1
	FROM
		`hierarchyDown` `h`
			INNER JOIN `CTE_2` `t_2` ON `t_2`.`ParentId` = `h`.`Id`
)
SELECT
	`t2`.`Id`,
	`t2`.`Level`
FROM
	`hierarchyDown` `t2`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Level`
FROM
	`HierarchyData` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `HierarchyData`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `HierarchyTree`

