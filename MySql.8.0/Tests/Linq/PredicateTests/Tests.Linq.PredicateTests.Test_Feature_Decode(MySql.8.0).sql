BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	DECODE(`r`.`One`, `r`.`One`, 0, 1) = 0

