-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Data VarChar(7) -- String
SET     @Data = 'Data 20'
DECLARE @Data_1 VarChar(7) -- String
SET     @Data_1 = 'Data 21'
DECLARE @Data_2 VarChar(7) -- String
SET     @Data_2 = 'Data 22'

SELECT
	`t1`.`Id`,
	`t1`.`Data`
FROM
	(
		SELECT 20 AS `Id`, @Data AS `Data`
		UNION ALL
		SELECT 21, @Data_1
		UNION ALL
		SELECT 22, @Data_2) `t1`

