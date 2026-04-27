-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 100
DECLARE @Data VarChar(8) -- String
SET     @Data = 'Data 100'
DECLARE @Id_1 Int32
SET     @Id_1 = 101
DECLARE @Data_1 VarChar(8) -- String
SET     @Data_1 = 'Data 101'

SELECT
	`t1`.`Id`,
	`t1`.`Data`
FROM
	(
		SELECT @Id AS `Id`, @Data AS `Data`
		UNION ALL
		SELECT @Id_1, @Data_1) `t1`

