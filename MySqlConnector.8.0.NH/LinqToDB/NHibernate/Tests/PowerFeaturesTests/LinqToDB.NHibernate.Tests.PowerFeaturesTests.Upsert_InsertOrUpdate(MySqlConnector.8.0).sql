-- MySql.8.0.MySql.Data MySql80
DELETE  
FROM
	`l2dbnh_orgunits`
WHERE
	`l2dbnh_orgunits`.`id` = 900


-- MySql.8.0.MySql.Data MySql80
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


-- MySql.8.0.MySql.Data MySql80
SELECT
	`o`.`id`,
	`o`.`parentid`,
	`o`.`name`
FROM
	`l2dbnh_orgunits` `o`
WHERE
	`o`.`id` = 900
LIMIT 2


-- MySql.8.0.MySql.Data MySql80
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


-- MySql.8.0.MySql.Data MySql80
SELECT
	`o`.`id`,
	`o`.`parentid`,
	`o`.`name`
FROM
	`l2dbnh_orgunits` `o`
WHERE
	`o`.`id` = 900
LIMIT 2


-- MySql.8.0.MySql.Data MySql80
DELETE  
FROM
	`l2dbnh_orgunits`
WHERE
	`l2dbnh_orgunits`.`id` = 900


