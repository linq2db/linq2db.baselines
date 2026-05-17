-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Two`) >= (`i`.`One`, `i`.`One` * 2) AND
	(`i`.`One`, `i`.`Two`) <= (`i`.`One`, `i`.`One` + `i`.`One`)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Three`) >= (`i`.`One`, `i`.`One`) AND
	(`i`.`One`, `i`.`Three`) <= (`i`.`One`, `i`.`Four`)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`One`, `i`.`Two`) >= (`i`.`One`, `i`.`Three`)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Two`, `i`.`Five`) >= (`i`.`One`, `i`.`One`) AND
	(`i`.`Two`, `i`.`Five`) <= (`i`.`Three`, `i`.`Two`)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Two`, `i`.`Five`) >= (`i`.`One`, `i`.`One`) AND
	(`i`.`Two`, `i`.`Five`) <= (`i`.`Two`, `i`.`Two`)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Two`, `i`.`Nil`) >= (`i`.`One`, `i`.`One`) AND
	(`i`.`Two`, `i`.`Nil`) <= (`i`.`Three`, `i`.`One`)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Two`, `i`.`Nil`) >= (`i`.`Two`, `i`.`One`) AND
	(`i`.`Two`, `i`.`Nil`) <= (`i`.`Two`, `i`.`Three`)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Two`, `i`.`Five`) >= (`i`.`One`, `i`.`Nil`) AND
	(`i`.`Two`, `i`.`Five`) <= (`i`.`Three`, `i`.`Nil`)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Two`, `i`.`Nil`) >= (`i`.`One`, `i`.`Nil`) AND
	(`i`.`Two`, `i`.`Nil`) <= (`i`.`Three`, `i`.`Nil`)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	(`i`.`Two`, `i`.`Two`) >= (`i`.`Nil`, `i`.`One`) AND
	(`i`.`Two`, `i`.`Two`) <= (`i`.`Three`, `i`.`Five`)

