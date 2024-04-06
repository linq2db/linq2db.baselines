﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3830TestTable`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue3830TestTable`
(
	`Id`    INT  NOT NULL,
	`Bool1` CHAR NOT NULL,
	`Bool2` CHAR     NULL,
	`Bool3` CHAR     NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `Issue3830TestTable`
(
	`Id`,
	`Bool1`,
	`Bool2`,
	`Bool3`
)
VALUES
(1,'Y',NULL,NULL),
(2,'N',NULL,'Y'),
(3,'N','Y',NULL),
(4,'Y','N','Y')

BeforeExecute
-- MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = 'Y' AND `r`.`Bool2` IS NULL AND `r`.`Bool3` IS NULL

BeforeExecute
-- MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = 'Y' AND `r`.`Bool2` IS NULL AND `r`.`Bool3` IS NULL

BeforeExecute
-- MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	(`r`.`Bool3` = NULL OR `r`.`Bool3` IS NULL) AND `r`.`Bool1` = 'Y' AND
	`r`.`Bool2` IS NULL

BeforeExecute
-- MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool2` IS NULL AND `r`.`Bool1` = 'Y' AND `r`.`Bool3` IS NULL

BeforeExecute
-- MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = 'N' AND `r`.`Bool2` IS NULL AND `r`.`Bool3` = 'Y'

BeforeExecute
-- MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool3` = 'Y' AND `r`.`Bool1` = 'N' AND `r`.`Bool2` IS NULL

BeforeExecute
-- MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = 'N' AND `r`.`Bool2` IS NULL AND `r`.`Bool3` = 'Y'

BeforeExecute
-- MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool2` IS NULL AND `r`.`Bool1` = 'N' AND `r`.`Bool3` = 'Y'

BeforeExecute
-- MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = 'N' AND `r`.`Bool2` = 'Y' AND `r`.`Bool3` IS NULL

BeforeExecute
-- MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = 'N' AND `r`.`Bool2` = 'Y' AND `r`.`Bool3` IS NULL

BeforeExecute
-- MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	(`r`.`Bool3` = NULL OR `r`.`Bool3` IS NULL) AND `r`.`Bool1` = 'N' AND
	`r`.`Bool2` = 'Y'

BeforeExecute
-- MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool2` IS NOT NULL AND `r`.`Bool1` = 'N' AND `r`.`Bool3` IS NULL

BeforeExecute
-- MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = 'Y' AND `r`.`Bool2` = 'N' AND `r`.`Bool3` = 'Y'

BeforeExecute
-- MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = 'Y' AND `r`.`Bool2` = 'N' AND `r`.`Bool3` = 'Y'

BeforeExecute
-- MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool3` = 'Y' AND `r`.`Bool1` = 'Y' AND `r`.`Bool2` = 'N'

BeforeExecute
-- MySqlConnector MySql

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool2` IS NOT NULL AND `r`.`Bool1` = 'Y' AND `r`.`Bool3` = 'Y'

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3830TestTable`

