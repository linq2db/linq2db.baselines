﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @group Int32
SET     @group = 7

SELECT
	`p`.`Id`,
	LAST_VALUE(`p`.`Id`) OVER(ORDER BY `p`.`Order`)
FROM
	`Position` `p`
WHERE
	`p`.`Group` = @group

