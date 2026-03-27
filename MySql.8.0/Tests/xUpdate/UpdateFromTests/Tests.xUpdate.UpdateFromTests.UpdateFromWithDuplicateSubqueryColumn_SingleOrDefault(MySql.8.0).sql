-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id1 Int32
SET     @id1 = 1

UPDATE
	`InsertFromWithConstantsTable` `r_1`
		LEFT JOIN `InsertFromWithConstantsTable` `r` ON `r`.`Id` = @id1
SET
	`r_1`.`Value1` = `r`.`Value3`,
	`r_1`.`Value2` = `r`.`Value3`,
	`r_1`.`Value3` = 'string 1',
	`r_1`.`Value4` = 'string 1'

