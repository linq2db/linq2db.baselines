BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @true_value String(1) -- AnsiStringFixedLength
SET     @true_value = 'Y'

SELECT
	`r`.`Id`,
	`r`.`Bool1`,
	`r`.`Bool2`,
	`r`.`Bool3`
FROM
	`Issue3830TestTable` `r`
WHERE
	`r`.`Bool1` = @true_value AND `r`.`Bool2` IS NULL AND
	`r`.`Bool3` IS NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
	(`r`.`Bool3` IS NULL OR `r`.`Bool3` IS NULL) AND `r`.`Bool1` = @Bool1 AND
	`r`.`Bool2` IS NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @true_value String(1) -- AnsiStringFixedLength
SET     @true_value = 'Y'
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
	`r`.`Bool3` = @true_value AND `r`.`Bool1` = @Bool1 AND
	`r`.`Bool2` IS NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @false_value String(1) -- AnsiStringFixedLength
SET     @false_value = 'N'
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
	`r`.`Bool1` = @false_value AND `r`.`Bool2` IS NULL AND
	`r`.`Bool3` = @Bool3

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @false_value String(1) -- AnsiStringFixedLength
SET     @false_value = 'N'
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
	`r`.`Bool1` = @false_value AND `r`.`Bool2` = @Bool2 AND
	`r`.`Bool3` IS NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
	(`r`.`Bool3` IS NULL OR `r`.`Bool3` IS NULL) AND `r`.`Bool1` = @Bool1 AND
	`r`.`Bool2` = @Bool2

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @true_value String(1) -- AnsiStringFixedLength
SET     @true_value = 'Y'
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
	`r`.`Bool1` = @true_value AND `r`.`Bool2` = @Bool2 AND
	`r`.`Bool3` = @Bool3

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @true_value String(1) -- AnsiStringFixedLength
SET     @true_value = 'Y'
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
	`r`.`Bool3` = @true_value AND `r`.`Bool1` = @Bool1 AND
	`r`.`Bool2` = @Bool2

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

