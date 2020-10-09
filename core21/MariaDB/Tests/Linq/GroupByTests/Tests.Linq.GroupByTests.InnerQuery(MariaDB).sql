BeforeExecute
-- SQLite.MS SQLite

SELECT 
	[t1].[PersonID], 
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT 
	(
		SELECT 
			`keyParam`.`Taxonomy`
		FROM
			`Doctor` `keyParam`
		WHERE
			`t1`.`PersonID` = `keyParam`.`PersonID`
		LIMIT @take
	)
FROM
	`Doctor` `t1`
GROUP BY
	`t1`.`PersonID`

