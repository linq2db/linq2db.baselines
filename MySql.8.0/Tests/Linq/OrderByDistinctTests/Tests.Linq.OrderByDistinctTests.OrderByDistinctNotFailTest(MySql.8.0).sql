﻿BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
LIMIT @skip, @take

