-- MariaDB.10.MySql.Data MariaDB
DELETE  
FROM
	`l2dbnh_orgunits`
WHERE
	`l2dbnh_orgunits`.`id` = 900


-- MariaDB.10.MySql.Data MariaDB
INSERT INTO `l2dbnh_orgunits`
(
	`id`,
	`parentid`,
	`name`
)
VALUES
(
	900,
	NULL,
	'First'
)
ON DUPLICATE KEY UPDATE
	`name` = 'Updated'


-- MariaDB.10.MySql.Data MariaDB
SELECT
	`o`.`id`,
	`o`.`parentid`,
	`o`.`name`
FROM
	`l2dbnh_orgunits` `o`
WHERE
	`o`.`id` = 900
LIMIT 2


-- MariaDB.10.MySql.Data MariaDB
INSERT INTO `l2dbnh_orgunits`
(
	`id`,
	`parentid`,
	`name`
)
VALUES
(
	900,
	NULL,
	'Second'
)
ON DUPLICATE KEY UPDATE
	`name` = 'Updated'


-- MariaDB.10.MySql.Data MariaDB
SELECT
	`o`.`id`,
	`o`.`parentid`,
	`o`.`name`
FROM
	`l2dbnh_orgunits` `o`
WHERE
	`o`.`id` = 900
LIMIT 2


-- MariaDB.10.MySql.Data MariaDB
DELETE  
FROM
	`l2dbnh_orgunits`
WHERE
	`l2dbnh_orgunits`.`id` = 900


