﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `TestFolder`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `TestFolder`
(
	`Id`       CHAR(36)      NOT NULL,
	`Label`    VARCHAR(4000)     NULL,
	`ParentId` CHAR(36)          NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

WITH RECURSIVE `CTE`
(
	`Level_1`,
	`Id`,
	`ParentId`,
	`Label`,
	`Entity_Id`,
	`Entity_Label`,
	`Entity_ParentId`
)
AS
(
	SELECT
		CAST(0 AS SIGNED),
		`c_1`.`Id`,
		`c_1`.`ParentId`,
		`c_1`.`Label`,
		`c_1`.`Id`,
		`c_1`.`Label`,
		`c_1`.`ParentId`
	FROM
		`TestFolder` `c_1`
	WHERE
		`c_1`.`ParentId` IS NULL
	UNION ALL
	SELECT
		`r`.`Level_1` + 1,
		`t1`.`Id`,
		`t1`.`ParentId`,
		Concat(`r`.`Label`, '/', `t1`.`Label`),
		`t1`.`Id`,
		`t1`.`Label`,
		`t1`.`ParentId`
	FROM
		`TestFolder` `t1`
			INNER JOIN `CTE` `r` ON `t1`.`ParentId` = `r`.`Id` AND `t1`.`ParentId` IS NOT NULL
)
SELECT
	`t2`.`Level_1`,
	`t2`.`Id`,
	`t2`.`ParentId`,
	`t2`.`Label`,
	`t2`.`Entity_Id`,
	`t2`.`Entity_Label`,
	`t2`.`Entity_ParentId`
FROM
	`CTE` `t2`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `TestFolder`

