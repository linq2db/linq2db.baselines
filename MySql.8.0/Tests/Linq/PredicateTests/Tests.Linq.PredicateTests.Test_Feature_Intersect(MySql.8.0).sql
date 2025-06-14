BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	EXISTS(
		SELECT
			`r`.`One`
		INTERSECT
		SELECT
			`r`.`One`
	)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	EXISTS(
		SELECT
			`r`.`Zero`
		INTERSECT
		SELECT
			`r`.`Zero`
	)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	EXISTS(
		SELECT
			`r`.`Null`
		INTERSECT
		SELECT
			`r`.`Null`
	)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	EXISTS(
		SELECT
			`r`.`One`
		INTERSECT
		SELECT
			`r`.`Zero`
	)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	EXISTS(
		SELECT
			`r`.`One`
		INTERSECT
		SELECT
			`r`.`Null`
	)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	EXISTS(
		SELECT
			`r`.`Zero`
		INTERSECT
		SELECT
			`r`.`Null`
	)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT EXISTS(
		SELECT
			`r`.`One`
		INTERSECT
		SELECT
			`r`.`One`
	)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT EXISTS(
		SELECT
			`r`.`Zero`
		INTERSECT
		SELECT
			`r`.`Zero`
	)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT EXISTS(
		SELECT
			`r`.`Null`
		INTERSECT
		SELECT
			`r`.`Null`
	)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT EXISTS(
		SELECT
			`r`.`One`
		INTERSECT
		SELECT
			`r`.`Zero`
	)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT EXISTS(
		SELECT
			`r`.`One`
		INTERSECT
		SELECT
			`r`.`Null`
	)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`FeatureTable` `r`
WHERE
	NOT EXISTS(
		SELECT
			`r`.`Zero`
		INTERSECT
		SELECT
			`r`.`Null`
	)

