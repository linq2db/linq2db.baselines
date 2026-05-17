-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Data VarChar(9) -- String
SET     @Data = '***OOO***'

INSERT INTO `TrimTestTable`
(
	`ID`,
	`Data`
)
VALUES
(
	@ID,
	@Data
)

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

