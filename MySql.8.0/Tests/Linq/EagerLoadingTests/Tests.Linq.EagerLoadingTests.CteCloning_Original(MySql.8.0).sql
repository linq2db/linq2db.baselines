﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `CteTable`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `CteTable`
(
	`Id`     INT NOT NULL,
	`Value1` INT NOT NULL,
	`Value2` INT NOT NULL,
	`Value3` INT NOT NULL,
	`Value4` INT NOT NULL,
	`Value5` INT NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `CteChildTable`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `CteChildTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

WITH RECURSIVE `cte` (`Value2`, `Value4`)
AS
(
	SELECT
		`r`.`Value2`,
		`r`.`Value4`
	FROM
		`CteTable` `r`
	UNION ALL
	SELECT
		`r_1`.`Value2`,
		`r_1`.`Value4`
	FROM
		`cte` `t1`
			INNER JOIN `CteTable` `r_1` ON `t1`.`Value2` = `r_1`.`Value3`
)
SELECT
	`m_1`.`Id`,
	`d_1`.`Id`,
	`d_1`.`Value1`,
	`d_1`.`Value2`,
	`d_1`.`Value3`,
	`d_1`.`Value4`,
	`d_1`.`Value5`
FROM
	(
		SELECT DISTINCT
			`d`.`Id`
		FROM
			`cte` `t2`
				LEFT JOIN `CteChildTable` `d` ON `t2`.`Value4` = `d`.`Id`
	) `m_1`
		INNER JOIN `CteTable` `d_1` ON `m_1`.`Id` = `d_1`.`Value3`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

WITH RECURSIVE `cte`
(
	`Id`,
	`Value1`,
	`Value2`,
	`Value3`,
	`Value4`,
	`Value5`
)
AS
(
	SELECT
		`r`.`Id`,
		`r`.`Value1`,
		`r`.`Value2`,
		`r`.`Value3`,
		`r`.`Value4`,
		`r`.`Value5`
	FROM
		`CteTable` `r`
	UNION ALL
	SELECT
		`r_1`.`Id`,
		`r_1`.`Value1`,
		`r_1`.`Value2`,
		`r_1`.`Value3`,
		`r_1`.`Value4`,
		`r_1`.`Value5`
	FROM
		`cte` `t1`
			INNER JOIN `CteTable` `r_1` ON `t1`.`Value2` = `r_1`.`Value3`
)
SELECT
	`t2`.`Id`,
	`t2`.`Value1`,
	`t2`.`Value2`,
	`t2`.`Value3`,
	`t2`.`Value4`,
	`t2`.`Value5`,
	`d`.`Id`
FROM
	`cte` `t2`
		LEFT JOIN `CteChildTable` `d` ON `t2`.`Value4` = `d`.`Id`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `CteChildTable`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `CteTable`

