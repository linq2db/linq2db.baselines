BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

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

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`r`.`ID`,
	`r`.`Data`
FROM
	`TrimTestTable` `r`
ORDER BY
	`r`.`ID`

