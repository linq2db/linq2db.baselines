-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Data VarChar(9) -- String
SET     @Data = 'Data 7777'
DECLARE @Data_1 VarChar(9) -- String
SET     @Data_1 = 'Data 7778'

SELECT
	`t1`.`Id`,
	`t1`.`Data`
FROM
	(
		SELECT 7777 AS `Id`, @Data AS `Data`
		UNION ALL
		SELECT 7778, @Data_1) `t1`

