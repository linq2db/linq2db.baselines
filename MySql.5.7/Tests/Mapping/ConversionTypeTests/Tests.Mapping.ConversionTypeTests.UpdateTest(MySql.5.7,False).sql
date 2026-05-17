-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Data VarChar(9) -- String
SET     @Data = '***OOO***'

UPDATE
	`TrimTestTable` `t`
SET
	`t`.`Data` = @Data
WHERE
	`t`.`Data` = '***XXX***'

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

