-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	`r`.`One` <=> `r`.`One`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	`r`.`Zero` <=> `r`.`Zero`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	`r`.`Null` <=> `r`.`Null`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	`r`.`One` <=> `r`.`Zero`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	`r`.`One` <=> `r`.`Null`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	`r`.`Zero` <=> `r`.`Null`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT(`r`.`One` <=> `r`.`One`)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT(`r`.`Zero` <=> `r`.`Zero`)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT(`r`.`Null` <=> `r`.`Null`)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT(`r`.`One` <=> `r`.`Zero`)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT(`r`.`One` <=> `r`.`Null`)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT(`r`.`Zero` <=> `r`.`Null`)

