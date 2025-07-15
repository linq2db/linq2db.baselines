BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`Int` <=> @value

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`NullableInt` <=> @value

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`Int` <=> @value

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @value Int32
SET     @value = 2

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableInt` <=> @value

