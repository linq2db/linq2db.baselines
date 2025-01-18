BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Data VarChar(9) -- String
SET     @Data = '***III***'
DECLARE @ID Int32
SET     @ID = 3

UPDATE
	`TrimTestTable` `t1`
SET
	`t1`.`Data` = @Data
WHERE
	`t1`.`ID` = @ID

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Data VarChar(9) -- String
SET     @Data = '***OOO***'

UPDATE
	`TrimTestTable` `t`
SET
	`t`.`Data` = @Data
WHERE
	`t`.`Data` = '***XXX***'

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Data VarChar(9) -- String
SET     @Data = '***SSS***'
DECLARE @p VarChar(9) -- String
SET     @p = '***HHH***'

UPDATE
	`TrimTestTable` `t`
SET
	`t`.`Data` = @Data
WHERE
	`t`.`Data` = @p

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

