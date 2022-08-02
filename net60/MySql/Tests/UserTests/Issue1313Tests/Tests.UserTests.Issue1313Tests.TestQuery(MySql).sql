﻿BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `ValueItem`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `ValueItem`
(
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `ValueItem`
(
	`Value`
)
VALUES
(
	123
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`row_1`.`Value`
FROM
	`ValueItem` `row_1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `ValueItem`

