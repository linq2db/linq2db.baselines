-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Two`, `i`.`Three`) <> (`i`.`One`, `i`.`One` * 2, `i`.`Four` - 1)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Two`, `i`.`Four`) <> (`i`.`One`, `i`.`Two`, `i`.`Three`)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Nil`, `i`.`Three`) <> (`i`.`One`, `i`.`Two`, `i`.`Three`)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(1, `i`.`Nil`, 4) <> (`i`.`One`, `i`.`Nil`, `i`.`Three`)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(1, NULL, 4) <> (`i`.`One`, `i`.`Nil`, `i`.`Three`)

