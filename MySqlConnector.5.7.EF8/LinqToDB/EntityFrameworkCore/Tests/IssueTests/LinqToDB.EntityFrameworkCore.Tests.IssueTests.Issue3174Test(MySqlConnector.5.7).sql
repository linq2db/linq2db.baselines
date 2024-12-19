--  MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	`p`.`Id`
FROM
	`ShadowTable` `p`
WHERE
	`p`.`IsDeleted` = 0
ORDER BY
	`p`.`Id`
LIMIT @skip, @take



--  MySql.5.7.MySqlConnector MySql57 (asynchronously)

CREATE TEMPORARY TABLE `ShadowTable`
(
	`Id` int NOT NULL,

	CONSTRAINT `PK_ShadowTable` PRIMARY KEY CLUSTERED (`Id`)
)



--  MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

INSERT INTO `ShadowTable`
(
	`Id`
)
SELECT
	`p`.`Id`
FROM
	`ShadowTable` `p`
WHERE
	`p`.`IsDeleted` = 0
ORDER BY
	`p`.`Id`
LIMIT @skip, @take



--  MySql.5.7.MySqlConnector MySql57 (asynchronously)

DROP TABLE IF EXISTS `ShadowTable`



