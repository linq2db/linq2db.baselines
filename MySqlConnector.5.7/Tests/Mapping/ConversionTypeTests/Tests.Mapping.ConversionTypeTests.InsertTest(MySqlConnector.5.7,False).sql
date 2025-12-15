-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 2
DECLARE @Data VarChar(9) -- String
SET     @Data = '***HHH***'

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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `TrimTestTable`
(
	`ID`,
	`Data`
)
VALUES
(
	3,
	'***VVV***'
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

