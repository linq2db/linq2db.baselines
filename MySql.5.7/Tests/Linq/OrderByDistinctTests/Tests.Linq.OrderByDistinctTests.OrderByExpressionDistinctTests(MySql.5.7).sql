BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
LIMIT @skip, @take

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
GROUP BY
	`x`.`DuplicateData`
ORDER BY
	MAX(`x`.`OrderData1` % 3)
LIMIT @skip, @take

