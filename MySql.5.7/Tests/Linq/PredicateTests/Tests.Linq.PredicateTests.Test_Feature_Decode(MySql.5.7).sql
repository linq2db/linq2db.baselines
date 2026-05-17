-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	DECODE(`r`.`One`, `r`.`One`, 0, 1) = 0

