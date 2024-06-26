BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CASE
		WHEN `q`.`ParentID` IS NOT NULL THEN `q`.`ParentID`
		ELSE 0
	END
FROM
	`Parent` `q`

