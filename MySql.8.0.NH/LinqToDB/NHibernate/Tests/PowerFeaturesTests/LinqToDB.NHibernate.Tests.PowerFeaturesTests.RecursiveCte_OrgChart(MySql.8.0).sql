-- MySql.8.0.MySql.Data MySql80
DELETE  
FROM
	`l2dbnh_orgunits`


INSERT INTO l2dbnh_orgunits (parentid, name, id) VALUES (?p0, ?p1, ?p2);?p0 = NULL [Type: Int32 (0:0:0)], ?p1 = 'CEO' [Type: String (3:0:0)], ?p2 = 1 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_orgunits (parentid, name, id) VALUES (?p0, ?p1, ?p2);?p0 = 1 [Type: Int32 (0:0:0)], ?p1 = 'VP-A' [Type: String (4:0:0)], ?p2 = 2 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_orgunits (parentid, name, id) VALUES (?p0, ?p1, ?p2);?p0 = 1 [Type: Int32 (0:0:0)], ?p1 = 'VP-B' [Type: String (4:0:0)], ?p2 = 3 [Type: Int32 (0:0:0)]

INSERT INTO l2dbnh_orgunits (parentid, name, id) VALUES (?p0, ?p1, ?p2);?p0 = 2 [Type: Int32 (0:0:0)], ?p1 = 'Lead' [Type: String (4:0:0)], ?p2 = 4 [Type: Int32 (0:0:0)]

-- MySql.8.0.MySql.Data MySql80
WITH RECURSIVE `self0` (`Level_1`, `Id`, `Name`)
AS
(
	SELECT
		CAST(1 AS SIGNED),
		`o`.`id`,
		`o`.`name`
	FROM
		`l2dbnh_orgunits` `o`
	WHERE
		`o`.`parentid` IS NULL
	UNION ALL
	SELECT
		`par`.`Level_1` + 1,
		`t1`.`id`,
		`t1`.`name`
	FROM
		`l2dbnh_orgunits` `t1`
			INNER JOIN `self0` `par` ON `par`.`Id` = `t1`.`parentid`
)
SELECT
	`t2`.`Id`,
	`t2`.`Name`,
	`t2`.`Level_1`
FROM
	`self0` `t2`
ORDER BY
	`t2`.`Id`


-- MySql.8.0.MySql.Data MySql80
DELETE  
FROM
	`l2dbnh_orgunits`


