BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CASE
		WHEN `p`.`Value1` IS NOT NULL THEN `p`.`Value1`
		ELSE 0
	END
FROM
	`Parent` `p`
WHERE
	`p`.`Value1` > 0 AND `p`.`Value1` IS NOT NULL

