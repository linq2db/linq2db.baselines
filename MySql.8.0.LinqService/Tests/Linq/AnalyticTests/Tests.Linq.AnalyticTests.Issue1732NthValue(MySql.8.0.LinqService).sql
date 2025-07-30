BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @group Int32
SET     @group = 7

SELECT
	`p`.`Id`,
	NTH_VALUE(`p`.`Id`, 2) FROM FIRST OVER(ORDER BY `p`.`Order` DESC)
FROM
	`Position` `p`
WHERE
	`p`.`Group` = @group

