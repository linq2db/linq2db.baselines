BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `HierarchyTree`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `HierarchyTree`
(
	`Id`       INT NOT NULL,
	`ParentId` INT     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @ParentId Int32
SET     @ParentId = NULL

INSERT INTO `HierarchyTree`
(
	`Id`,
	`ParentId`
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @ParentId Int32
SET     @ParentId = NULL

INSERT INTO `HierarchyTree`
(
	`Id`,
	`ParentId`
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 10
DECLARE @ParentId Int32
SET     @ParentId = 1

INSERT INTO `HierarchyTree`
(
	`Id`,
	`ParentId`
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 11
DECLARE @ParentId Int32
SET     @ParentId = 1

INSERT INTO `HierarchyTree`
(
	`Id`,
	`ParentId`
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 20
DECLARE @ParentId Int32
SET     @ParentId = 2

INSERT INTO `HierarchyTree`
(
	`Id`,
	`ParentId`
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 22
DECLARE @ParentId Int32
SET     @ParentId = 2

INSERT INTO `HierarchyTree`
(
	`Id`,
	`ParentId`
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 100
DECLARE @ParentId Int32
SET     @ParentId = 10

INSERT INTO `HierarchyTree`
(
	`Id`,
	`ParentId`
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 101
DECLARE @ParentId Int32
SET     @ParentId = 10

INSERT INTO `HierarchyTree`
(
	`Id`,
	`ParentId`
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 102
DECLARE @ParentId Int32
SET     @ParentId = 10

INSERT INTO `HierarchyTree`
(
	`Id`,
	`ParentId`
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 110
DECLARE @ParentId Int32
SET     @ParentId = 11

INSERT INTO `HierarchyTree`
(
	`Id`,
	`ParentId`
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 111
DECLARE @ParentId Int32
SET     @ParentId = 11

INSERT INTO `HierarchyTree`
(
	`Id`,
	`ParentId`
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 112
DECLARE @ParentId Int32
SET     @ParentId = 11

INSERT INTO `HierarchyTree`
(
	`Id`,
	`ParentId`
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 200
DECLARE @ParentId Int32
SET     @ParentId = 20

INSERT INTO `HierarchyTree`
(
	`Id`,
	`ParentId`
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 201
DECLARE @ParentId Int32
SET     @ParentId = 20

INSERT INTO `HierarchyTree`
(
	`Id`,
	`ParentId`
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 202
DECLARE @ParentId Int32
SET     @ParentId = 20

INSERT INTO `HierarchyTree`
(
	`Id`,
	`ParentId`
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 210
DECLARE @ParentId Int32
SET     @ParentId = 21

INSERT INTO `HierarchyTree`
(
	`Id`,
	`ParentId`
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 211
DECLARE @ParentId Int32
SET     @ParentId = 21

INSERT INTO `HierarchyTree`
(
	`Id`,
	`ParentId`
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 212
DECLARE @ParentId Int32
SET     @ParentId = 21

INSERT INTO `HierarchyTree`
(
	`Id`,
	`ParentId`
)
VALUES
(
	@Id,
	@ParentId
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `HierarchyData`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `HierarchyData`
(
	`Id`    INT NOT NULL,
	`Level` INT NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

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
`hierarchyDown` (`Level_1`, `Id`)
AS
(
	SELECT
		0,
		`t2`.`Id`
	FROM
		`CTE_1` `t2`
	UNION ALL
	SELECT
		`t3`.`Level_1` + 1,
		`t_1`.`Id`
	FROM
		`hierarchyDown` `t3`
			INNER JOIN `CTE_2` `t_1` ON `t_1`.`ParentId` = `t3`.`Id`
)
SELECT
	`t4`.`Id`,
	`t4`.`Level_1`
FROM
	`hierarchyDown` `t4`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Level`
FROM
	`HierarchyData` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `HierarchyData`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `HierarchyTree`

