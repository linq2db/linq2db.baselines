BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)
DECLARE @group Int32
SET     @group = 7

SELECT
	`p`.`Id`,
	LEAD(`p`.`Id`, 1, -1) OVER(ORDER BY `p`.`Order`)
FROM
	`Position` `p`
WHERE
	`p`.`Group` = @group

