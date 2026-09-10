-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 20
DECLARE @Data VarChar(7) -- String
SET     @Data = 'Data 20'
DECLARE @Id_1 Int32
SET     @Id_1 = 21
DECLARE @Data_1 VarChar(7) -- String
SET     @Data_1 = 'Data 21'
DECLARE @Id_2 Int32
SET     @Id_2 = 22
DECLARE @Data_2 VarChar(7) -- String
SET     @Data_2 = 'Data 22'

SELECT
	`t1`.`Id`,
	`t1`.`Data`
FROM
	(
		SELECT @Id AS `Id`, @Data AS `Data`
		UNION ALL
		SELECT @Id_1, @Data_1
		UNION ALL
		SELECT @Id_2, @Data_2) `t1`

