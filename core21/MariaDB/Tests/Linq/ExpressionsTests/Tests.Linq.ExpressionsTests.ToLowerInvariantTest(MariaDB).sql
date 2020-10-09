BeforeExecute
-- SQLite.MS SQLite

SELECT 
	[t1].[PersonID], 
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	Lower(`p`.`Taxonomy`)
FROM
	`Doctor` `p`
WHERE
	Lower(`p`.`Taxonomy`) = 'psychiatry'

