﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Cast(Concat('2010-', Lpad(`p`.`ID`,2,'0'), '-01') as Date) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	Extract(year from `t`.`c1`) = 2010

