﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Person` `t1`
			WHERE
				CASE
					WHEN `t1`.`MiddleName` = '123' THEN 1
					ELSE 0
				END = CASE
					WHEN (`t1`.`MiddleName` = '1' OR `t1`.`MiddleName` = 'test' AND (`t1`.`MiddleName` <> '1' OR `t1`.`MiddleName` IS NULL))
						THEN 1
					ELSE 0
				END
		)
			THEN 1
		ELSE 0
	END as `c1`

