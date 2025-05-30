﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @p Int64
SET     @p = 5
DECLARE @endId Int32
SET     @endId = 15

SELECT
	`s`.`value`,
	`s`.`id`
FROM
	`sample_class` `t1`
		INNER JOIN (
			SELECT * FROM `sample_class` where `id` >= @p and `id` < @endId
		) `s` ON `s`.`id` = `t1`.`id`
WHERE
	`s`.`id` > 10
ORDER BY
	`s`.`id`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @startId Int32
SET     @startId = 5
DECLARE @endId Int32
SET     @endId = 15

SELECT
	`t`.`value`,
	`t`.`id`
FROM
	`sample_class` `t`
WHERE
	`t`.`id` >= @startId AND `t`.`id` < @endId AND `t`.`id` > 10
ORDER BY
	`t`.`id`

