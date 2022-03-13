BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `Issue3360WithEnum`
(
	`Id`  INT         NOT NULL,
	`Str` VARCHAR(50) NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

WITH RECURSIVE `cte` (`Id`, `Str`)
AS
(
	SELECT
		`p`.`Id`,
		`p`.`Str`
	FROM
		`Issue3360WithEnum` `p`
	UNION ALL
	SELECT
		`p_1`.`Id`,
		'THIS_IS_TWO'
	FROM
		`cte` `p_1`
			INNER JOIN `Issue3360WithEnum` `r` ON `p_1`.`Id` = `r`.`Id` + 1
)
SELECT
	`t1`.`Id`,
	`t1`.`Str`
FROM
	`cte` `t1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue3360WithEnum`

