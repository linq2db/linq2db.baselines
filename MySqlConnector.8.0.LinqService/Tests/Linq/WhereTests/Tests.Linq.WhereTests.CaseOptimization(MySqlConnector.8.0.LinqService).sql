﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`Id`,
	`x`.`StringValue`
FROM
	`WhereWithString` `x`
WHERE
	LOCATE('Str', `x`.`StringValue`) > 0 AND `x`.`StringValue` IS NOT NULL

