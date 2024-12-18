BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue3830TestTable`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue3830TestTable`
(
	`Id`    INT  NOT NULL,
	`Bool1` CHAR NOT NULL,
	`Bool2` CHAR     NULL,
	`Bool3` CHAR     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Issue3830TestTable`
(
	`Id`,
	`Bool1`,
	`Bool2`,
	`Bool3`
)
VALUES
(
	1,
	'Y',
	NULL,
	NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Issue3830TestTable`
(
	`Id`,
	`Bool1`,
	`Bool2`,
	`Bool3`
)
VALUES
(
	2,
	'N',
	NULL,
	'Y'
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Issue3830TestTable`
(
	`Id`,
	`Bool1`,
	`Bool2`,
	`Bool3`
)
VALUES
(
	3,
	'N',
	'Y',
	NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Issue3830TestTable`
(
	`Id`,
	`Bool1`,
	`Bool2`,
	`Bool3`
)
VALUES
(
	4,
	'Y',
	'N',
	'Y'
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	(`r`.`Bool3` IS NULL OR `r`.`Bool3` IS NULL) AND `r`.`Bool1` = 'Y' AND
	`r`.`Bool2` IS NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = 'N' AND
	`r`.`Bool2` IS NULL AND
	`r`.`Bool3` = 'Y' AND
	`r`.`Bool3` IS NOT NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = 'N' AND
	`r`.`Bool2` IS NULL AND
	`r`.`Bool3` = 'Y' AND
	`r`.`Bool3` IS NOT NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool2` IS NULL AND
	`r`.`Bool1` = 'N' AND
	`r`.`Bool3` = 'Y' AND
	`r`.`Bool3` IS NOT NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = 'N' AND
	`r`.`Bool2` = 'Y' AND
	`r`.`Bool2` IS NOT NULL AND
	`r`.`Bool3` IS NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = 'N' AND
	`r`.`Bool2` = 'Y' AND
	`r`.`Bool2` IS NOT NULL AND
	`r`.`Bool3` IS NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	(`r`.`Bool3` IS NULL OR `r`.`Bool3` IS NULL) AND
	`r`.`Bool1` = 'N' AND
	`r`.`Bool2` = 'Y' AND
	`r`.`Bool2` IS NOT NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = 'Y' AND
	`r`.`Bool2` = 'N' AND
	`r`.`Bool2` IS NOT NULL AND
	`r`.`Bool3` = 'Y' AND
	`r`.`Bool3` IS NOT NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = 'Y' AND
	`r`.`Bool2` = 'N' AND
	`r`.`Bool2` IS NOT NULL AND
	`r`.`Bool3` = 'Y' AND
	`r`.`Bool3` IS NOT NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool3` = 'Y' AND
	`r`.`Bool1` = 'Y' AND
	`r`.`Bool2` = 'N' AND
	`r`.`Bool2` IS NOT NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool2` IS NOT NULL AND
	`r`.`Bool1` = 'Y' AND
	`r`.`Bool3` = 'Y' AND
	`r`.`Bool3` IS NOT NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue3830TestTable`

