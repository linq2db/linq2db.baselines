BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`One`, `i`.`Two`) >= (`i`.`One`, `i`.`One` * 2) AND (`i`.`One`, `i`.`Two`) <= (`i`.`One`, `i`.`One` + `i`.`One`))

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`One`, `i`.`Three`) >= (`i`.`One`, `i`.`One`) AND (`i`.`One`, `i`.`Three`) <= (`i`.`One`, `i`.`Four`))

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT (`i`.`One`, `i`.`Two`) >= (`i`.`One`, `i`.`Three`)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Five`) >= (`i`.`One`, `i`.`One`) AND (`i`.`Two`, `i`.`Five`) <= (`i`.`Three`, `i`.`Two`))

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Five`) >= (`i`.`One`, `i`.`One`) AND (`i`.`Two`, `i`.`Five`) <= (`i`.`Two`, `i`.`Two`))

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Nil`) >= (`i`.`One`, `i`.`One`) AND (`i`.`Two`, `i`.`Nil`) <= (`i`.`Three`, `i`.`One`))

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Nil`) >= (`i`.`Two`, `i`.`One`) AND (`i`.`Two`, `i`.`Nil`) <= (`i`.`Two`, `i`.`Three`))

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Five`) >= (`i`.`One`, `i`.`Nil`) AND (`i`.`Two`, `i`.`Five`) <= (`i`.`Three`, `i`.`Nil`))

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Nil`) >= (`i`.`One`, `i`.`Nil`) AND (`i`.`Two`, `i`.`Nil`) <= (`i`.`Three`, `i`.`Nil`))

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Ints` `i`
WHERE
	NOT ((`i`.`Two`, `i`.`Two`) >= (`i`.`Nil`, `i`.`One`) AND (`i`.`Two`, `i`.`Two`) <= (`i`.`Three`, `i`.`Five`))

