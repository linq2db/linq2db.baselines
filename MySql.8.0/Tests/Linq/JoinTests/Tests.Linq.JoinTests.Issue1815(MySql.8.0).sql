﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`InId`,
	CASE
		WHEN `e`.`InId` IS NULL THEN `t1`.`InMinQuantity`
		ELSE `e`.`InMinQuantity`
	END,
	CASE
		WHEN `e`.`InId` IS NULL THEN `t1`.`InMaxQuantity`
		ELSE `e`.`InMaxQuantity`
	END
FROM
	`StLink` `t1`
		LEFT JOIN `EdtLink` `e` ON `t1`.`InId` = `e`.`InId`
WHERE
	`t1`.`InId` = 1
LIMIT 2

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`InId`,
	CASE
		WHEN `e`.`InId` IS NULL THEN `t1`.`InMinQuantity`
		ELSE `e`.`InMinQuantity`
	END,
	CASE
		WHEN `e`.`InId` IS NULL THEN `t1`.`InMaxQuantity`
		ELSE `e`.`InMaxQuantity`
	END
FROM
	`StLink` `t1`
		LEFT JOIN `EdtLink` `e` ON `t1`.`InId` = `e`.`InId`
WHERE
	`t1`.`InId` = 2
LIMIT 2

