-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 0
DECLARE @Data VarChar(6) -- String
SET     @Data = 'Data 0'
DECLARE @Id_1 Int32
SET     @Id_1 = 1
DECLARE @Data_1 VarChar(6) -- String
SET     @Data_1 = 'Data 1'

SELECT
	`t1`.`Id`,
	`t1`.`Data`
FROM
	(
		SELECT @Id AS `Id`, @Data AS `Data`
		UNION ALL
		SELECT @Id_1, @Data_1) `t1`

