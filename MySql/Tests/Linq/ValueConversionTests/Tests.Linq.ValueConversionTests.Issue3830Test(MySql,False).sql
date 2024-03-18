﻿BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue3830TestTable`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue3830TestTable`
(
	`Id`    INT  NOT NULL,
	`Bool1` CHAR NOT NULL,
	`Bool2` CHAR     NULL,
	`Bool3` CHAR     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql
DECLARE @Bool1 String(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = @Bool1 AND `r`.`Bool2` IS NULL AND `r`.`Bool3` IS NULL

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Bool1 String(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = @Bool1 AND `r`.`Bool2` IS NULL AND `r`.`Bool3` IS NULL

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Bool3 String -- AnsiStringFixedLength
SET     @Bool3 = NULL
DECLARE @Bool1 String(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	(`r`.`Bool3` = @Bool3 OR `r`.`Bool3` IS NULL) AND `r`.`Bool1` = @Bool1 AND
	`r`.`Bool2` IS NULL

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Bool1 String(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool2` IS NULL AND `r`.`Bool1` = @Bool1 AND `r`.`Bool3` IS NULL

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Bool1 String(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'
DECLARE @Bool3 String(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = @Bool1 AND `r`.`Bool2` IS NULL AND `r`.`Bool3` = @Bool3

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Bool3 String(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'
DECLARE @Bool1 String(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool3` = @Bool3 AND `r`.`Bool1` = @Bool1 AND `r`.`Bool2` IS NULL

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Bool1 String(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'
DECLARE @Bool3 String(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = @Bool1 AND `r`.`Bool2` IS NULL AND `r`.`Bool3` = @Bool3

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Bool1 String(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'
DECLARE @Bool3 String(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool2` IS NULL AND `r`.`Bool1` = @Bool1 AND `r`.`Bool3` = @Bool3

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Bool1 String(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'
DECLARE @Bool2 String(1) -- AnsiStringFixedLength
SET     @Bool2 = 'Y'

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = @Bool1 AND `r`.`Bool2` = @Bool2 AND `r`.`Bool3` IS NULL

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Bool1 String(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'
DECLARE @Bool2 String(1) -- AnsiStringFixedLength
SET     @Bool2 = 'Y'

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = @Bool1 AND `r`.`Bool2` = @Bool2 AND `r`.`Bool3` IS NULL

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Bool3 String -- AnsiStringFixedLength
SET     @Bool3 = NULL
DECLARE @Bool1 String(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'
DECLARE @Bool2 String(1) -- AnsiStringFixedLength
SET     @Bool2 = 'Y'

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	(`r`.`Bool3` = @Bool3 OR `r`.`Bool3` IS NULL) AND `r`.`Bool1` = @Bool1 AND
	`r`.`Bool2` = @Bool2

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Bool1 String(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool2` IS NOT NULL AND `r`.`Bool1` = @Bool1 AND
	`r`.`Bool3` IS NULL

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Bool1 String(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'
DECLARE @Bool2 String(1) -- AnsiStringFixedLength
SET     @Bool2 = 'N'
DECLARE @Bool3 String(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = @Bool1 AND `r`.`Bool2` = @Bool2 AND `r`.`Bool3` = @Bool3

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Bool1 String(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'
DECLARE @Bool2 String(1) -- AnsiStringFixedLength
SET     @Bool2 = 'N'
DECLARE @Bool3 String(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = @Bool1 AND `r`.`Bool2` = @Bool2 AND `r`.`Bool3` = @Bool3

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Bool3 String(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'
DECLARE @Bool1 String(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'
DECLARE @Bool2 String(1) -- AnsiStringFixedLength
SET     @Bool2 = 'N'

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool3` = @Bool3 AND `r`.`Bool1` = @Bool1 AND `r`.`Bool2` = @Bool2

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Bool1 String(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'
DECLARE @Bool3 String(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool2` IS NOT NULL AND `r`.`Bool1` = @Bool1 AND
	`r`.`Bool3` = @Bool3

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue3830TestTable`

