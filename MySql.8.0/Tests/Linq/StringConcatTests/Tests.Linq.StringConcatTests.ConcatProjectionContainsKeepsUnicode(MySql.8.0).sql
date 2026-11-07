-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

