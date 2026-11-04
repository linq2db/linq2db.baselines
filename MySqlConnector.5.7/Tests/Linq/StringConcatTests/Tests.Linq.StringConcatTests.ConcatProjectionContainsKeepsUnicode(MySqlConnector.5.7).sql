-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @suffix VarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	CASE
		WHEN 'A-100Жук' IN (
			SELECT
				CONCAT(`p`.`Sku`, Coalesce(@suffix, ''))
			FROM
				`ConcatProduct` `p`
		)
			THEN 1
		ELSE 0
	END as `c1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @suffix VarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	CASE
		WHEN 'A-100Щит' IN (
			SELECT
				CONCAT(`p`.`Sku`, Coalesce(@suffix, ''))
			FROM
				`ConcatProduct` `p`
		)
			THEN 1
		ELSE 0
	END as `c1`

